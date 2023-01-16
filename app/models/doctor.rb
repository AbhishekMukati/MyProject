class Doctor < ApplicationRecord 
  # has_secure_password
  has_many :appointments , dependent: :destroy
  has_many :patients , through: :appointments

  # validates :name, presence: true
  # validates :specialization , presence: true 

end
