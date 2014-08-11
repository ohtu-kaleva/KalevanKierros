class KkEnrollmentMailer < ActionMailer::Base
  default from: "#{ActionMailer::Base.smtp_settings[:user_name]}"

  def enrollment_email(user)
    @user = user
    mail(to: @user.email,
         subject: "Ilmoittautuminen Kalevan Kierrokselle #{Date.today.year}")
  end

  def enrollment_email_captain(user, group_members, group_name)
    @user = user
    @group_name = group_name
    @group_members = group_members
    mail(to: @user.email,
         subject: "Joukkueilmoittautuminen Kalevan Kierrokselle #{Date.today.year}")
  end
end
