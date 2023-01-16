class Patient < ApplicationRecord 
   has_secure_password
  has_many :appointments , dependent: :destroy
  has_many :doctors , through: :appointments 
   validates :password , confirmation: true 
   validates :password_confirmation , presence: true

  # validates :name, presence: true
  # validates :disease , presence: true
  # validates :age, presence: true
  # validates :gender, presence: true
end

