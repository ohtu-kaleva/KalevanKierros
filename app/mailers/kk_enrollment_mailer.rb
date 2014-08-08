class KkEnrollmentMailer < ActionMailer::Base
  default from: "#{ActionMailer::Base.smtp_settings['user_name']}"

  def enrollment_email(user)
    @user = user
    mail(to: @user.email,
         subject: "Ilmoittautuminen Kalevan Kierrokselle #{Date.today.year}")
  end
end
