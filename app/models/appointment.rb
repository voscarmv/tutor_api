class Appointment < ApplicationRecord
  belongs_to :subject
  belongs_to :user
end
