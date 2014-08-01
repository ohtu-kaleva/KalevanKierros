class KkEnrollmentMailer < ActionMailer::Base
  default from: ENV['EMAIL_ADDRESS']

  def enrollment_email(user)
    @user = user
    mail(to: ENV['EMAIL_ADDRESS'],
         subject: "Ilmoittautuminen Kalevan Kierrokselle #{Date.today.year}")
  end
end
