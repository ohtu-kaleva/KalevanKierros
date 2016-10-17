class UsersController < ApplicationController
  before_action :redirect_if_user_not_admin, only: [:index, :destroy]
  before_action :set_user_or_redirect, only:  [:show, :edit, :update, :destroy]

  def index
    @userInfo = []

    users = User.all
    potential_statistics = Statistic.where 'statistics.user_id IS NULL'
    users.each do |u|
      current_statistic = u.statistic
      if current_statistic
        first_name = u.first_name.strip.downcase
        last_name = u.last_name.strip.downcase
        birth_year = current_statistic.birth_year
        found = potential_statistics.select do |s|
          s.first_name.strip.downcase.eql?(first_name) && s.last_name.strip.downcase.eql?(last_name) && s.birth_year == birth_year
        end
        joinable = (found.length > 0 and u.username[0..7] != 'outsider') ? 'K' : ''
      else
        joinable = ''
      end
      @userInfo << [u, joinable]
    end
  end

  # GET /users/1
  def show
    @enrollments = @user.enrollments
    @group = @user.group
    @kk_enrollment = @user.kk_enrollment
    year = AppSetting.find_by name: 'KkYear'
    @year = ''
    if year
      @year = year.value
    end
    account = AppSetting.find_by name:'KkAccountNumber'
    @account_number = ''
    if account
      @account_number = account.value
    else
      @account_number = 'Tilinumeroa ei löytynyt'
    end
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
    @user.generate_activation_token

    if @user.save
      UserMailer.registration_activation_email(@user).deliver
      redirect_to root_url, flash: { success: 'Käyttäjätunnus luotu, aktivoi tunnus sähköpostiin lähetettyjen ohjeiden mukaan.' }
    else
      render :new
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      redirect_to @user, flash: { success: 'Käyttäjätiedot päivitetty onnistuneesti.' }
    else
      render :edit
    end
  end

  # DELETE /users/1
  def destroy
    message = {}

    if @user != current_user
      @user.destroy
      message = { success: 'Käyttäjä poistettu onnistuneesti.' }
    end

    redirect_to users_url, flash: message
  end

  def new_activation
    if !current_user
      @user = User.find_by id: params[:id]
      if @user && !@user.active
        if @user.activation_token == params[:activation_token]
          render :activate
          return
        end
      end
    end
    redirect_to :root
  end

  def activate
    if !current_user
      @user = User.find_by id: params[:id]
      if @user && !@user.active
        if @user.username == params[:username] && (@user.authenticate params[:password])
          if @user.activation_token == params[:activation_token]
            @user.update_attribute(:active, true)
            @user.update_attribute :kk_number, generate_kk_number(@user)
            init_statistic_entry @user
            session[:user_id] = @user.id
            flash[:success] = "Tervetuloa " + @user.first_name
          end
        else
          flash[:error] = "Tarkista käyttäjätunnus ja salasana!"
          redirect_to :back && return
        end
      end
    end
    redirect_to :root
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

    def init_statistic_entry(user)
      Statistic.create kk_number: user.kk_number, user_id: user.id,
                       last_name: user.last_name, first_name: user.first_name,
                       city: user.city, birth_year: user.birth_date.year,
                       prev_year_pts_sum: 0.0, prev_year_event_sum: 0,
                       six_events_completed_count: 0, five_events_completed_count: 0,
                       four_events_completed_count: 0, total_events_completed: 0,
                       pts_sum: 0, position: 0, p: nil, a: 0, ap: nil, k: 0, v: 0
    end

    def generate_kk_number(user)
      3300000+user.id
    end
end