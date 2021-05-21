class EmailMailer < ApplicationMailer
  default from: 'portforio@email.com'

  def send_mail(email)
    @email = email
    mail(
      to:   ENV['MAILER_USER_ID'],
      subject: 'お問い合わせ通知'
      )
  end
end
