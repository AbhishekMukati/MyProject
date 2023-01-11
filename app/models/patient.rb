class Patient < ApplicationRecord 
  has_many :appointments
  has_many :doctors , through: :appointments 
    


  validates :name, presence: true
  validates :disease , presence: true
  validates :age, presence: true
  validates :gender, presence: true
end

