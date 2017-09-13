class InquiryInfo 
  include ActiveModel::Model
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  attr_accessor :mail_address, :name, :body

  validates :mail_address, presence: true, format: { with: VALID_EMAIL_REGEX }
  validates :name, presence: true, length: { maximum: 100 }
  validates :body, presence: true, length: { maximum: 500 }

end