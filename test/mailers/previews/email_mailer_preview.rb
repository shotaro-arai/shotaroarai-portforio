# Preview all emails at http://localhost:3000/rails/mailers/email_mailer
class EmailMailerPreview < ActionMailer::Preview
  def email
    email = Email.new(name:"荒井翔太郎", email:"taro@mail", title:"どうも", text:"こんにちわ")
    EmailMailer.send_mail(email)
  end
end