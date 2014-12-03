class KkEnrollmentMailer < ActionMailer::Base
  default from: "#{ActionMailer::Base.smtp_settings[:user_name]}"

  def enrollment_email(user)
    @user = user
    account = AppSetting.find_by name:'KkAccountNumber'
    @account_number = ''
    if account
      @account_number = account.value
    else
      @account_number = 'Tilinumeroa ei löytynyt'
    end

    mail(to: @user.email,
         subject: "Ilmoittautuminen Kalevan Kierrokselle #{Date.today.year}")
  end

  def enrollment_email_captain(user, group_members, group_name)
    @user = user
    account = AppSetting.find_by name:'KkAccountNumber'
    if account
      @account_number = account.value
    end
    @group_name = group_name
    @group_members = group_members
    mail(to: @user.email,
         subject: "Joukkueilmoittautuminen Kalevan Kierrokselle #{Date.today.year}")
  end
end
