class InquiryMailer < ActionMailer::Base
  default from: "bbasejp@gmail.com"
  def sendMail(email, title, inquiryInfo)
    @title = title
    @email = inquiryInfo.mail_address
    @name = inquiryInfo.name
    @body = inquiryInfo.body
    mail to: email, subject: title
  end
end