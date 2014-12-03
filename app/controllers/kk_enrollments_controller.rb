class KkEnrollmentsController < ApplicationController
  include InitResultsEntry
  before_action :redirect_if_user_not_admin, except: [:new, :create]
  before_action :set_user, only: [:new, :create]
  before_action :check_enrollment, only: [:new, :create]
  before_action :set_kk_enrollment_or_redirect, only: [:edit]

  # GET /kk_enrollments
  def index
    @kk_enrollments = KkEnrollment.all
  end

  # GET /kk_enrollments/1
  def show
  end

  # GET /kk_enrollments/new
  def new
    if enrollment_open?
      @kk_enrollment = KkEnrollment.new
    else
      redirect_to root_path, flash: { error: 'Kierrokselle ei voi ilmoittautua' }
    end
  end

  # GET /kk_enrollments/1/edit
  def edit
    @user = @kk_enrollment.user
    @group = @user.group
  end

  # POST /kk_enrollments
  def create
    if !enrollment_open?
      redirect_to root_path, flash: { error: 'Kierrokselle ei voi ilmoittautua' }
      return
    end

    @kk_enrollment = KkEnrollment.new user_id: @user.id

    if @kk_enrollment.save
      init_results_entry(@user)
      KkEnrollmentMailer.enrollment_email(@user).deliver
      redirect_to(@user, flash: { success: 'Ilmoittautuminen onnistui' }) && return
    end

    redirect_to root_path, flash: { error: 'Ilmoittautuminen epäonnistui' }
  end

  def change_enrollment_status
    status = AppSetting.find_by name: 'KkEnrollmentStatus'

    if !status
      status = AppSetting.new name: 'KkEnrollmentStatus', value: 'closed'
    end

    message = ''
    if status.value.eql?('closed')
      if params[:account_number].empty?
        redirect_to admin_kk_enrollment_path, flash: { error: 'Tilinumero puuttuu' } and return
      else
        if check_account_number(params[:account_number])
          account_number = AppSetting.new name: 'KkAccountNumber', value: params[:account_number]
          account_number.save
        else
          redirect_to admin_kk_enrollment_path, flash: { error: 'Tilinumero ei ollut hyväksyttävä' } and return
        end
      end
      status.value = 'open'
      message = 'Kierrosilmoittautuminen avattu'
    else
      account_number = AppSetting.find_by name: 'KkAccountNumber'
      if account_number
        account_number.destroy
      end
      status.value = 'closed'
      message = 'Kierrosilmoittautuminen suljettu'
    end

    if status.save
      redirect_to admin_kk_enrollment_path, flash: { success: message }
    else
      redirect_to root_path, flash: { error: 'Operaatio ei onnistunut' }
    end
  end

  # PATCH/PUT /kk_enrollments/1
  def update
    @kk_enrollment = KkEnrollment.find_by id: params[:id]

    if @kk_enrollment
      if @kk_enrollment.user.group
        group = @kk_enrollment.user.group
        users = group.users
        users.each do |u|
          enr = u.kk_enrollment
          enr.update_attribute(:paid, true)
        end
      else
        @kk_enrollment.update_attribute(:paid, true)
      end
      flash[:success] = 'Ilmoittautuminen päivitettiin onnistuneesti'
    end

    redirect_to kk_enrollments_path
  end

  # DELETE /kk_enrollments/1
  def destroy
    @kk_enrollment = KkEnrollment.find_by id: params[:id]

    if @kk_enrollment
      @kk_enrollment.destroy
      redirect_to kk_enrollments_path, flash: { success: 'Ilmoittautuminen poistettu' }
    else
      redirect_to root_path
    end
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def kk_enrollment_params
      params.require(:kk_enrollment).permit(:id, :paid)
    end

    def set_user
      @user = current_user
      return if @user
      redirect_to signin_path
    end

    def set_kk_enrollment_or_redirect
      @kk_enrollment = KkEnrollment.find_by id: params[:id]
        return if @kk_enrollment
        redirect_to :root
    end

    def check_account_number(string)
      /[a-zA-Z]{2}[0-9]{2}[a-zA-Z0-9]{4}[0-9]{7}([a-zA-Z0-9]?){0,16}/ === string.gsub(/\s+/,'')
    end

    def check_enrollment
      return if !@user.kk_enrollment
      redirect_to root_path, flash: { error: 'Olet jo ilmoittautunut kierrokselle' }
    end

end
