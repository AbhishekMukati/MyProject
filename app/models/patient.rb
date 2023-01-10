class Patient < ApplicationRecord 
  has_many :appointments
  has_many :doctors , through: :appointments 


  
  # sample comment for git 
end

