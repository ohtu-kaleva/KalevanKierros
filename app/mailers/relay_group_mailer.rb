class RelayGroupMailer < ActionMailer::Base
  default from: "#{ActionMailer::Base.smtp_settings[:kk_sender_name]} <#{ActionMailer::Base.smtp_settings[:kk_sender_address]}>"

  def enrollment_email_relay_captain(relay_group, user, relay_group_members)
    @relay_group = relay_group
    @user = user
    @date = Date.today + 2.weeks
    account = AppSetting.find_by name:'KkAccountNumber'
    @year = AppSetting.find_by name: 'KkYear'
    @account_number = ''
    if account
      @account_number = account.value
    end
    @relay_group_members = relay_group_members
    mail(to: @user.email,
         subject: "Viestijoukkueilmoittautuminen Kalevan Kierrokselle #{@year.value}")
  end
end