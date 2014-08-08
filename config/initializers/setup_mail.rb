email_settings = YAML::load(File.open("#{Rails.root.to_s}/config/email.yml.erb"))
ActionMailer::Base.smtp_settings = email_settings[Rails.env] unless email_settings[Rails.env].nil?
