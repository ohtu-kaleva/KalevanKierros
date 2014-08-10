email_settings = YAML::load(File.open("#{Rails.root.to_s}/config/email.yml"))[Rails.env]
if email_settings
  email_settings.each do |k,v|
    if v.respond_to?('start_with?') && v.start_with?('ENV')
      email_settings[k] = eval(v)
    end
  end

  email_settings.keys.each do |k|
    email_settings[k.to_sym] = email_settings[k]
    email_settings.delete k
  end

  ActionMailer::Base.smtp_settings = email_settings
end
