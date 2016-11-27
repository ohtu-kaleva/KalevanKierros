class GroupsController < ApplicationController
  include InitResultsEntry
  before_action :set_group_or_redirect, only: [:show, :add_user_to_group, :delete_user_from_group]
  before_action :redirect_if_user_not_captain_or_admin, only: [:add_user_to_group, :update_user_group_relation, :delete_user_from_group]

  def new
    if enrollment_open?
      set_user

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

    set_user

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
      elsif not member.group.nil? or not member.relay_group.nil?
        flash[:error] = "Käyttäjä #{kk_number} on jo liitetty joukkueseen"
        redirect_to new_group_path and return
      else
        members.append member
      end
    end

    @group = Group.new(group_params)
    @group.user_id = @user.id
    year = AppSetting.find_by name: 'KkYear'
    if @group.save
      members.uniq.each do |m|
        m.update_column :group_id, @group.id
        if not m.kk_enrollment
          KkEnrollment.new(user_id: m.id).save
        end
        res = Result.find_by kk_number: m.kk_number, year: year.value
        if res
          res.update_column :group, @group.name
          res.update_column :ignore_on_statistics, false
        else
          init_results_entry(m)
        end
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
    year = AppSetting.find_by name: 'KkYear'
    @isFemaleGroup = female_group?(@group.name, year.value)
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
      if not user.group.nil? or not user.relay_group.nil?
        redirect_to :back, flash: { error: 'Jäsenen lisääminen ei onnistunut. Jäsen kuuluu jo johonkin ryhmään.'} and return
      end
      if not user.kk_enrollment
        KkEnrollment.new(user_id: user.id).save
      end
      user.update_column :group_id, group.id
      year = AppSetting.find_by name: 'KkYear'
      res = Result.find_by kk_number: user.kk_number, year: year.value
      if res
        res.update_column :group, group.name
        res.update_column :ignore_on_statistics, false
      else
        init_results_entry(user)
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

  def set_user
    @user = current_user
    if !@user
      redirect_to signin_path and return
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

  def female_group?(group, year)
    member_results = Result.where(year: year).where(group: group)
    member_results.each do |member|
      if member.series[0,1] == 'M'
        return false
      end
    end
    return true
  end

end