class GroupsController < ApplicationController
  include InitResultsEntry
  before_action :set_group_or_redirect, only: [:show, :add_user_to_group, :delete_user_from_group]
  before_action :redirect_if_user_not_captain_or_admin, only: [:add_user_to_group, :update_user_group_relation, :delete_user_from_group, :show]

  def new
    if enrollment_open?
      set_user_and_check_enrollment

      @group = Group.new
      @users = User.all
    else
      redirect_to root_path, flash: { error: 'Kierrokselle ei voi ilmoittautua' }
    end
  end

  def create
    if enrollment_deadline_gone? or !enrollment_open?
      redirect_to root_path, flash: { error: 'Kierrokselle ei voi ilmoittautua' }
      return
    end

    set_user_and_check_enrollment

    kk_numbers = params[:kk_numbers].select { |e| !e.empty? }
    if kk_numbers.size > 6
      redirect_to new_group_path, flash: { error: 'Tarkista jäsenten määrä' }
      return
    end

    members = []
    kk_numbers.each do |kk_number|
      member = User.find_by kk_number: kk_number
      if !member
        flash[:error] = "Käyttäjää #{kk_number} ei löydy"
        redirect_to new_group_path and return
      elsif member.kk_enrollment
        flash[:error] = "Käyttäjä #{kk_number} on jo ilmoittautunut kierrokselle"
        redirect_to new_group_path and return
      else
        members.append member
      end
    end

    @group = Group.new(group_params)
    @group.user_id = @user.id
    if @group.save
      members.uniq.each do |m|
        m.update_column :group_id, @group.id
        KkEnrollment.new(user_id: m.id).save
        init_results_entry(m)
      end
      KkEnrollmentMailer.enrollment_email_captain(@user, members.uniq, group_params[:name]).deliver
      redirect_to(@user, flash: { success: 'Ryhmä luotu onnistuneesti' }) && return
    else
      render :new
    end
  end

  def show
    @users = @group.users
    @captain = @group.user
    if !(@users && @captain)
      redirect_to root_path and return
    end
    @count = @group.users.count
  end

  def add_user_to_group
  end

  def delete_user_from_group
    user = User.find_by id: params[:user_id]
    if user
      if @group.user == user
        redirect_to :back, flash: { error: 'Joukkueen kapteenia ei voi poistaa' } and return
      end
      res = Result.find_by kk_number: user.kk_number
      if res
        res.update_column :group, nil
      end
      user.update_column :group_id, nil
      enrollment = user.kk_enrollment
      enrollment.destroy
      redirect_to :back and return
    end
    redirect_to :back
  end

  def update_user_group_relation
    group = Group.find_by id: params[:id]
    user = User.find_by kk_number: params[:kk_number]
    if not group.nil? and not user.nil? and group.users.count < 6
      if enrollment_deadline_gone? and not user_is_admin?
        redirect_to :back, flash: { error: 'Joukkueeseen ei voi enää lisätä henkilöitä.' } and return
      end
      if not user.group.nil?
        redirect_to :back, flash: { error: 'Jäsenen lisääminen ei onnistunut. Jäsen kuuluu jo johonkin ryhmään.'} and return
      end
      if user.kk_enrollment
        redirect_to :back, flash: { error: 'Käyttäjä on jo ilmoittautunut kierrokselle!' } and return
      else
        user.update_column :group_id, group.id
        KkEnrollment.new(user_id: user.id).save
        year = AppSetting.find_by name: 'KkYear'
        res = Result.find_by kk_number: user.kk_number, year: year.value
        if res
          res.update_column :group, group.name
        else
          init_results_entry(user)
        end
        #year = AppSetting.find_by name: 'KkYear'
        #result = Result.find_by kk_number: user.kk_number, year: year.value
        #result.update_column :group, group.name
      end
      redirect_to group_path(params[:id]), flash: { success: 'Jäsen lisätty ryhmään.' } and return
    else
      redirect_to :back, flash: { error: 'Jäsenen lisääminen ei onnistunut.' }
    end
  end

  def update
  end

  private

  def set_group_or_redirect
    @group = Group.find_by id: params[:id]
    return if @group
    redirect_to :root
  end

  def set_user_and_check_enrollment
    @user = current_user
    if !@user
      redirect_to signin_path and return
    end

    if @user.kk_enrollment
      redirect_to user_path(@user.id), flash: { error: 'Olet jo ilmoittautunut kierrokselle' }
      return
    end
  end

  def redirect_if_user_not_captain_or_admin
    group = Group.find_by id: params[:id]
    if group
      if user_is_admin? or current_user == group.user
        return
      else
        redirect_to :root and return
      end
    end
    redirect_to :root and return
  end

  def group_params
    params.require(:group).permit(:name)
  end

end