class User < ApplicationRecord
  has_secure_password
  has_many :appointments
  has_many :subjects, :through => :appointments 
end
