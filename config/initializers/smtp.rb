ActionMailer::Base.smtp_settings = {
  address: "smtp.gmail.com",
  port: 587,
  domain: 'gmail.com',
  user_name: ENV['bargeplanner@gmail.com'],
  password: ENV['positions2019'],
  authentication: :plain,
  enable_starttls_auto: true
}

