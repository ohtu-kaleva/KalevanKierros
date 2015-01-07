class EnrollmentMailer < ActionMailer::Base
  default from: "#{ActionMailer::Base.smtp_settings[:user_name]}"

  def send_enrollment_email(user, event, enrollment)
    @user = user
    @enrollment = enrollment
    @price = event.second_price/100.0
    @account_number = event.account_number
    @pay_day = 'heti'
    # Varmistetaan että päivien vertailussa verrataan tähän päivään evaluoimalla
    # Date.today aina ajettaessa send_enrollment_email
    get_this_day = lambda { Date.today }

    if get_this_day.call <= event.end_date
      @price = event.price/100.0
      @pay_day = event.end_date.to_s
    end

    case event.sport_type
    when 'RunningEvent'
      running_enrollment_email
    when 'RowingEvent'
      rowing_enrollment_email
    when 'SkatingEvent'
      skating_enrollment_email
    when 'SkiingEvent'
      skiing_enrollment_email
    when 'OrienteeringEvent'
      orienteering_enrollment_email
    when 'CyclingEvent'
      cycling_enrollment_email
    end
  end

  def running_enrollment_email
    @type = @enrollment.enrollment_datas.find_by(name:'Tyyppi').value

    mail(to: @user.email,
         subject: 'Ilmoittautuminen Kalevan Kierroksen Juoksuun',
         template_name: :running_enrollment_email).deliver
  end

  def rowing_enrollment_email
    @pair = @enrollment.enrollment_datas.find_by(name: 'Parin nimi').value
    @style = @enrollment.enrollment_datas.find_by(name: 'Melonta').value

    mail(to: @user.email,
         subject: 'Ilmoittautuminen Kalevan Kierroksen Soutuun',
         template_name: :rowing_enrollment_email).deliver
  end

  def skating_enrollment_email
    @calculator = @enrollment.enrollment_datas.find_by(name: 'Kierroslaskija').value

    mail(to: @user.email,
         subject: 'Ilmoittautuminen Kalevan Kierroksen Luisteluun',
         template_name: :skating_enrollment_email).deliver
  end

  def skiing_enrollment_email
    @style = @enrollment.enrollment_datas.find_by(name: 'Tyyli').value

    mail(to: @user.email,
         subject: 'Ilmoittautuminen Kalevan Kierroksen Hiihtoon',
         template_name: :skiing_enrollment_email).deliver
  end

  def orienteering_enrollment_email
    @emit = @enrollment.enrollment_datas.find_by(name: 'Emit').value

    mail(to: @user.email,
         subject: 'Ilmoittautuminen Kalevan Kierroksen Suunnistukseen',
         template_name: :orienteering_enrollment_email).deliver
  end

  def cycling_enrollment_email
    mail(to: @user.email,
         subject: 'Ilmoittautuminen Kalevan Kierroksen Pyöräilyyn',
         template_name: :cycling_enrollment_email).deliver
  end
end
