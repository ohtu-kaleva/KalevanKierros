class KkEnrollmentsController < ApplicationController
  include InitResultsEntry
  before_action :authenticate
  before_action :redirect_if_user_not_admin, except: [:new, :create]
  before_action :set_user, only: [:new, :create]
  before_action :check_enrollment, only: [:new, :create]
  before_action :set_kk_enrollment_or_redirect, only: [:edit]

  # GET /kk_enrollments
  def index
    @kk_enrollments = KkEnrollment.all
    year = AppSetting.find_by name: 'KkYear'
    respond_to do |format|
      format.html
      format.csv { send_data to_csv, :filename => year.value + "_kierrosilmoittautumiset.csv" }
      format.xlsx { send_data to_xlsx.to_stream.read, :filename => year.value + "_kierrosilmoittautumiset.xlsx" }
    end
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
    if @user.kk_enrollment
      flash[:error] = "Olet jo ilmoittautunut kierrokselle"
      redirect_to root_path and return
    end

    @kk_enrollment = KkEnrollment.new user_id: @user.id

    if @kk_enrollment.save
      year = AppSetting.find_by name: 'KkYear'
      res = Result.find_by kk_number: @user.kk_number, year: year.value
      if res
        res.update_column :ignore_on_statistics, false
      else
        init_results_entry(@user)
      end
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
      deadline = Date.civil(params[:deadline][:year].to_i, params[:deadline][:month].to_i, params[:deadline][:day].to_i)
      if params[:account_number].empty?
        redirect_to admin_kk_enrollment_path, flash: { error: 'Tilinumero puuttuu' } and return
      elsif params[:kk_year].empty? or params[:kk_year].to_i < Date.today.year
        redirect_to admin_kk_enrollment_path, flash: { error: 'Virheellinen vuosi' } and return
      elsif deadline <= Date.today
        redirect_to admin_kk_enrollment_path, flash: { error: 'Virheellinen ilmoittautumisen deadline'} and return
      else
        if check_account_number(params[:account_number])
          account_number = AppSetting.new name: 'KkAccountNumber', value: params[:account_number]
          account_number.save
        else
          redirect_to admin_kk_enrollment_path, flash: { error: 'Tilinumero ei ollut hyväksyttävä' } and return
        end
        kk_year = AppSetting.new name: 'KkYear', value: params[:kk_year]
        kk_year.save
        dl = AppSetting.new name: 'Enrollment_Deadline', value: deadline.to_s
        dl.save
      end
      status.value = 'open'
      message = 'Kierrosilmoittautuminen avattu'
    else
      account_number = AppSetting.find_by name: 'KkAccountNumber'
      if account_number
        account_number.destroy
      end
      kk_year = AppSetting.find_by name: 'KkYear'
      if kk_year
        kk_year.destroy
      end
      deadline = AppSetting.find_by name: 'Enrollment_Deadline'
      if deadline
        deadline.destroy
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
    message = {}
    if params[:paid]
      paid = params[:paid].delete_if {|key, value| value.blank? }
      paid.each do |key, value|
        kk_enrollment = KkEnrollment.find_by id:key
        if not kk_enrollment.nil?
          if is_float? value
            kk_enrollment.update_attribute :paid, (value.to_f * 100.0).to_i
          else
            message[:error] = 'Yksi tai useampi maksutieto syötettiin virheellisessä muodossa.'
          end
        end
      end
    end
    if params[:value_date]
      value_date = params[:value_date].delete_if {|key, value| value.blank? }
      value_date.each do |key, value|
        kk_enrollment = KkEnrollment.find_by id:key
        if not kk_enrollment.nil?
          if is_date? value
            kk_enrollment.update_attribute :value_date, Date::strptime(value, "%d.%m.%Y")
          else
            message[:error] = 'Yksi tai useampi päivämäärä syötettiin virheellisessä muodossa.'
          end
        end
      end
    end
    redirect_back(fallback_location: root_path, flash: message)
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

    def is_float? string
      true if Float(string) rescue false
    end

    def is_date? string
      true if Date::strptime(string, "%d.%m.%Y") rescue false
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kk_enrollment_params
      params.require(:kk_enrollment).permit(:id, :paid)
    end

    def set_user
      @user = current_user
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
      redirect_to user_path(@user.id), flash: { error: 'Olet jo ilmoittautunut kierrokselle' }
    end

    def to_csv(options = {})
      CSV.generate(options) do |csv|
        csv << spreadsheet_headers
        @kk_enrollments.each do |kk_enrollment|
          csv << enrollment_data_as_array(kk_enrollment)
        end
      end
    end

    def to_xlsx
      Axlsx::Package.new do |kk_enrollments|
        kk_enrollments.workbook do |wb|
          wb.add_worksheet do |sheet|
            sheet.add_row spreadsheet_headers
            @kk_enrollments.each do |kk_enrollment|
              sheet.add_row enrollment_data_as_array(kk_enrollment)
            end
          end
        end
      end
    end

    def spreadsheet_headers
      attr_names = ["ilm_nro", "Etunimi", "Sukunimi", "Joukkue", "Sähköposti", "KK-numero", "Sarja", "Vuosi", "Osoite", "Postinumero", "Postitoimipaikka", "Viitenumero", "Maksettava", "Maksettu", "Arvopäivä"]
    end

    def enrollment_data_as_array(kk_enrollment)
      user = kk_enrollment.user

      if not user.group.nil? and user == user.group.user
        price = 200
      elsif user.group.nil?
        price = 50
      end

      if user.group.nil?
        group_name = ""
      else
        group_name = user.group.name
      end

      if kk_enrollment.value_date.nil?
        value_date = ""
      else
        value_date = kk_enrollment.value_date.strftime("%d.%m.%Y")
      end

      data_array = [kk_enrollment.id, user.first_name, user.last_name, group_name, user.email, user.kk_number, user.define_series, user.birth_date.year, user.street_address, user.postal_code, user.city, user.construct_reference_number, price, kk_enrollment.paid/100.0, value_date]

      data_array
    end
end
