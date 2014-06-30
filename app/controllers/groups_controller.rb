class GroupsController < ApplicationController
  before_action :set_group_or_redirect, only: [:show]
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

    if @group.save
      members.uniq.each do |m|
        m.update_column :group_id, @group.id
        KkEnrollment.new(user_id: m.id).save
      end
      redirect_to :root, flash: { success: 'Ryhmä luotu onnistuneesti' }
      return
    else
      render :new
    end
  end

  def show
    @users = @group.users
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
      redirect_to signin_path
    end

    if @user.kk_enrollment
      redirect_to root_path, flash: { error: 'Olet jo ilmoittautunut kierrokselle' }
      return
    end
  end

  def group_params
    params.require(:group).permit(:name)
  end

end
