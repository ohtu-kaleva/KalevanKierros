class UserMailer < ActionMailer::Base
  default from: ENV['EMAIL_ADDRESS']

  def registration_activation_email(user)
    @user = user
    mail(to: @user.email,
         subject: 'Kalevan Kierros - Vahvista rekisteröityminen')
  end
end
