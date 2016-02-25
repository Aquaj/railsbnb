ActionMailer::Base.smtp_settings = {
  address: 'smtp.postmarkapp.com',
  port: '25',
  domain: 'heroku.com',
  user_name: ENV['42dddfa7-c6fd-4e63-9734-c768424565e4'],
  password: ENV['42dddfa7-c6fd-4e63-9734-c768424565e4'],
  authentication: :cram_md5,
  enable_starttls_auto: true
}
