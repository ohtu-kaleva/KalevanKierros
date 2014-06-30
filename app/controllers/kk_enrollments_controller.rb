class KkEnrollmentsController < ApplicationController
  before_action :redirect_if_user_not_admin, except: [:new, :create]

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
      set_user_and_check_enrollment
      @kk_enrollment = KkEnrollment.new
    else
      redirect_to root_path, flash: { alert: 'Kierrokselle ei voi ilmoittautua' }
    end
  end

  # GET /kk_enrollments/1/edit
  def edit
  end

  # POST /kk_enrollments
  def create
    if !enrollment_open?
      redirect_to root_path, flash: { alert: 'Kierrokselle ei voi ilmoittautua' }
    end

    set_user_and_check_enrollment

    @kk_enrollment = KkEnrollment.new user_id: @user.id

    if @kk_enrollment.save
      redirect_to @user, flash: { success: 'Ilmoittautuminen onnistui' }
    else
      redirect_to root_path, flash: { error: 'Ilmoittautuminen epäonnistui' }
    end
  end

  def open
    status = AppSetting.find_by name: 'KkEnrollmentStatus'
    if status.value.eql?('closed')
      status.value = 'open'
    else
      status.value = 'closed'
    end

    if status.save
      redirect_to admin_kk_enrollment_path, flash:  { success: 'Kierrosilmoittautuminen avattu' }
    else
      redirect_to root_path, flash: { error: 'Operaatio ei onnistunut' }
    end
  end

  # PATCH/PUT /kk_enrollments/1
  def update

    if @kk_enrollment.update(kk_enrollment_params)
      redirect_to @kk_enrollment, flash: { success: 'Ilmoittautuminen päivitettiin onnistuneesti' }
    else
      render :edit
    end
  end

  # DELETE /kk_enrollments/1
  def destroy

    @kk_enrollment.destroy
    redirect_to kk_enrollments_url, flash: { success: 'Ilmoittautuminen poistettu' }
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def kk_enrollment_params
      params.require(:kk_enrollment).permit(:user_id, :paid)
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
end
