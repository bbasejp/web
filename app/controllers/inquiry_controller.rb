class InquiryController < ApplicationController
  protect_from_forgery :except => [:form]
  
  def form
    @InquiryInfo = InquiryInfo.new(params[:inquiry_info])
    if @InquiryInfo.valid?
      
      #send to owner
      title = "問い合わせがありました。"
      owner = "bbasejp@gmail.com"
      InquiryMailer.sendMail(owner, title, @InquiryInfo).deliver
      
      #send to user
      title = "問い合わせを受け付けました。"
      InquiryMailer.sendMail(params[:inquiry_info][:mail_address], title, @InquiryInfo).deliver
      
      render 'form'
    else 
      render 'form'
    end
  
  end
  
end
