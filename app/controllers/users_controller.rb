class UsersController < ApplicationController
  before_action :redirect_if_user_not_admin, only: [:index]
  before_action :set_user_or_redirect, only:  [:show, :edit, :update, :destroy]

  # GET /users
  def index
    @users = User.all
  end

  # GET /users/1
  def show
    @enrollments = @user.enrollments
    @group = @user.group
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to root_url, flash: { success: 'Käyttäjätunnus luotu, kirjaudu sisään oikeasta yläkulmasta.' }
    else
      render :new
    end
  end

  def add_user_to_group
    @group = Group.find_by id: params[:group_id]
    @users = User.all.select{ |user| user.group_id.nil? }
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      redirect_to @user, success: 'Käyttäjätiedot päivitetty onnistuneesti.'
    else
      render :edit
    end
  end

  def update_user_group_relation
    user = User.find_by id: params[:user_id]
    if user.update_attribute(:group_id, params[:group_id])
      redirect_to :root, flash: { success: 'Jäsen lisätty ryhmään.' }
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
      redirect_to users_url, flash: { success: 'Käyttäjä poistettu onnistuneesti.' }
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_or_redirect
      if current_user
          @user = User.find_by id: params[:id]
          return if @user && (current_user.id == @user.id || user_is_admin?)
      end

      redirect_to :root
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:first_name, :last_name, :username, :email, :phone_number, :city, :street_address, :postal_code, :birth_date, :gender, :password, :password_confirmation)
    end
end
