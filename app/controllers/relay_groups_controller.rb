class RelayGroupsController < ApplicationController
  include InitResultsEntry
  before_action :set_relay_group_or_redirect, only: [:show, :add_user_to_relay_group, :delete_user_from_relay_group]
  before_action :redirect_if_user_not_captain_or_admin, only: [:add_user_to_relay_group, :update_user_relay_group_relation, :delete_user_from_relay_group]

  def index
    @users = User.where.not(relay_group: nil)
  end

  def new
    if enrollment_open?
      set_user

      @relay_group = RelayGroup.new
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
      redirect_to new_relay_group_path, flash: { error: 'Tarkista jäsenten määrä' }
      return
    end

    members = []
    kk_numbers.each do |kk_number|
      member = User.find_by kk_number: kk_number
      if !member
        flash[:error] = "Käyttäjää #{kk_number} ei löydy"
        redirect_to new_relay_group_path and return
      elsif not member.group.nil? or not member.relay_group.nil?
        flash[:error] = "Käyttäjä #{kk_number} on jo liitetty joukkueseen"
        redirect_to new_group_path and return
      else
        members.append member
      end
    end

    @relay_group = RelayGroup.new(relay_group_params)
    @relay_group.user_id = @user.id
    year = AppSetting.find_by name: 'KkYear'
    if @relay_group.save
      members.uniq.each do |m|
        m.update_column :relay_group_id, @relay_group.id
        res = Result.find_by kk_number: m.kk_number, year: year.value
        if res
          res.update_column :relay_group, @relay_group.name
        else
          init_results_entry(m, true)
        end
      end
      RelayGroupMailer.enrollment_email_relay_captain(@relay_group, @user, members.uniq).deliver
      redirect_to(@user, flash: { success: 'Ryhmä luotu onnistuneesti' }) && return
    else
      render :new
    end
  end

  def show
    @users = @relay_group.users
    @captain = @relay_group.user
    if !(@users && @captain)
      redirect_to root_path and return
    end
    @count = @relay_group.users.count
  end

  def add_user_to_relay_group
  end

  def delete_user_from_relay_group
    user = User.find_by id: params[:user_id]
    if user
      if @relay_group.user == user
        redirect_to :back, flash: { error: 'Joukkueen kapteenia ei voi poistaa' } and return
      end
      res = Result.find_by kk_number: user.kk_number
      if res.ignore_on_statistics
        res.destroy
      else
        res.update_column :relay_group, nil
      end
      user.update_column :relay_group_id, nil
      redirect_to :back and return
    end
    redirect_to :back
  end

  def update_user_relay_group_relation
    relay_group = RelayGroup.find_by id: params[:id]
    user = User.find_by kk_number: params[:kk_number]
    if not relay_group.nil? and not user.nil? and relay_group.users.count < 6
      if enrollment_deadline_gone? and not user_is_admin?
        redirect_to :back, flash: { error: 'Joukkueeseen ei voi enää lisätä henkilöitä.' } and return
      end
      if not user.group.nil? or not user.relay_group.nil?
        redirect_to :back, flash: { error: 'Jäsenen lisääminen ei onnistunut. Jäsen kuuluu jo johonkin ryhmään.'} and return
      end
      user.update_column :relay_group_id, relay_group.id
      year = AppSetting.find_by name: 'KkYear'
      res = Result.find_by kk_number: user.kk_number, year: year.value
      if res
        res.update_column :relay_group, relay_group.name
      else
        init_results_entry(user, true)
      end
      redirect_to relay_group_path(params[:id]), flash: { success: 'Jäsen lisätty ryhmään.' } and return
    else
      redirect_to :back, flash: { error: 'Jäsenen lisääminen ei onnistunut.' }
    end
  end

  def update
  end

  private

  def set_relay_group_or_redirect
    @relay_group = RelayGroup.find_by id: params[:id]
    return if @relay_group
    redirect_to :root
  end

  def set_user
    @user = current_user
    if !@user
      redirect_to signin_path and return
    end
  end

  def redirect_if_user_not_captain_or_admin
    relay_group = RelayGroup.find_by id: params[:id]
    if relay_group
      if user_is_admin? or current_user == relay_group.user
        return
      else
        redirect_to :root and return
      end
    end
    redirect_to :root and return
  end

  def relay_group_params
    params.require(:relay_group).permit(:name)
  end

end