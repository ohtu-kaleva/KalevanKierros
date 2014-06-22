class UsersController < ApplicationController
  before_action :redirect_if_user_not_admin, only: [:index]
  before_action :set_user_or_redirect, only:  [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
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
  # POST /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to root_url, notice: 'Käyttäjätunnus luotu, kirjaudu sisään oikeasta yläkulmasta.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def add_user_to_group
    @group = Group.find_by id: params[:group_id]
    @users = User.all.select{ |user| user.group_id.nil? }
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'Käyttäjätiedot päivitetty onnistuneesti.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def update_user_group_relation
    user = User.find_by id: params[:user_id]
    if user.update_attribute(:group_id, params[:group_id])
      redirect_to :root, notice: 'Jäsen lisätty ryhmään.'
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'Käyttäjä poistettu onnistuneesti.' }
      format.json { head :no_content }
    end
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
      params.require(:user).permit(:first_name, :last_name, :username, :email, :phone_number, :address, :birth_date, :gender, :password, :password_confirmation)
    end
end
