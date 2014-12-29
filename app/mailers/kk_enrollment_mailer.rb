class KkEnrollmentMailer < ActionMailer::Base
  default from: "#{ActionMailer::Base.smtp_settings[:user_name]}"

  def enrollment_email(user)
    @user = user
    @date = Date.today + 2.weeks
    account = AppSetting.find_by name:'KkAccountNumber'
    @year = AppSetting.find_by name: 'KkYear'
    @account_number = ''
    if account
      @account_number = account.value
    else
      @account_number = 'Tilinumeroa ei löytynyt'
    end

    mail(to: @user.email,
         subject: "Ilmoittautuminen Kalevan Kierrokselle #{@year.value}")
  end

  def enrollment_email_captain(user, group_members, group_name)
    @user = user
    @date = Date.today + 2.weeks
    account = AppSetting.find_by name:'KkAccountNumber'
    @year = AppSetting.find_by name: 'KkYear'
    @account_number = ''
    if account
      @account_number = account.value
    end
    @group_name = group_name
    @group_members = group_members
    mail(to: @user.email,
         subject: "Joukkueilmoittautuminen Kalevan Kierrokselle #{@year.value}")
  end
end
