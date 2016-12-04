class UserMailer < ActionMailer::Base
  default from: "#{ActionMailer::Base.smtp_settings[:kk_sender_address]}"

  def registration_activation_email(user, redirect_url)
    @user = user
    @redirect_url = redirect_url
    mail(to: @user.email,
         subject: 'Kalevan Kierros - Vahvista rekisteröityminen')
  end

  def reset_password_email(user)
    @user = user
    mail(to: @user.email,
         subject: 'Kalevan Kierros - Uusi salasana')
  end
end
