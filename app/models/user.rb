class User < ApplicationRecord
  has_secure_token
  has_secure_password

  validates :email, uniqueness: true, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP,
    message: "is invalid" }
  
  validates :name, :phone, :address, presence: true, on: :update

  def self.authenticate(email, password)
    user = User.find_by(email: email)
    return false unless user
    
    if user.authenticate(password)
      user.regenerate_token
      user
    end
  end

end