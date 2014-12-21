class GroupsController < ApplicationController
  include InitResultsEntry
  before_action :set_group_or_redirect, only: [:show, :add_user_to_group]
  before_action :redirect_if_user_not_captain_or_admin, only: [:add_user_to_group, :update_user_group_relation]

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
    if !enrollment_open?
      redirect_to root_path, flash: { error: 'Kierrokselle ei voi ilmoittautua' }
      return
    end

    set_user_and_check_enrollment

    kk_numbers = params[:kk_numbers].select { |e| !e.empty? }
    if kk_numbers.size < 4 || kk_numbers.size > 6
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

      redirect_to :root, flash: { success: 'Ryhmä luotu onnistuneesti' }
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
    redirect_to :back
  end

  def update_user_group_relation
    group = Group.find_by id: params[:id]
    user = User.find_by kk_number: params[:kk_number]
    if not group.nil? and not user.nil? and group.users.count < 6
      if not user.group.nil?
        redirect_to :back, flash: { error: 'Jäsenen lisääminen ei onnistunut. Jäsen kuuluu jo johonkin ryhmään.'} and return
      end
      if user.kk_enrollment
        redirect_to :back, flash: { error: 'Käyttäjä on jo ilmoittautunut kierrokselle!' } and return
      else
        user.update_column :group_id, group.id
        KkEnrollment.new(user_id: user.id).save
        init_results_entry(user)
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
      redirect_to root_path, flash: { error: 'Olet jo ilmoittautunut kierrokselle' }
      return
    end
  end

  def redirect_if_user_not_captain_or_admin
    if user_is_admin? || user_is_captain?
      return
    else
      redirect_to :root
    end
  end

  def user_is_captain?
    @group.user == current_user
  end

  def group_params
    params.require(:group).permit(:name)
  end

end
