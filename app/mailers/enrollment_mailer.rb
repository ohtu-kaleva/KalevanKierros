class EnrollmentMailer < ActionMailer::Base
  default from: "#{ActionMailer::Base.smtp_settings[:kk_sender_address]}"

  def send_enrollment_email(user, event, enrollment)
    @user = user
    @enrollment = enrollment
    @account_number = event.account_number
    @receiver = event.payment_receiver
    @event_name = event.name
    @price = enrollment.calculate_price
    
    if enrollment.created_at <= enrollment.event.end_date
      @pay_day = enrollment.event.end_date.to_s
    else
      @pay_day = 'heti'
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
    when ''
      no_sport_event_enrollment_email
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
    @two_or_one = @enrollment.enrollment_datas.find_by(name: 'Tyyli').value
    if @two_or_one == 'Vuoro'
      @price *= 2.0
    end

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

  def no_sport_event_enrollment_email
    mail(to: @user.email,
      subject: 'Ilmoittautuminen',
      template_name: :no_sport_event_email).deliver
  end
end