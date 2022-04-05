class User < ApplicationRecord
  has_secure_token
  has_secure_password

  validates :email, uniqueness: true, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP,
    message: "is invalid" }
  
  validates :name, :phone, :address, presence: true, on: :update
end
