class Appointment < ApplicationRecord
  belongs_to :subject
  belongs_to :user

  scope :by_user, -> (user_id_n) { where({user_id: user_id_n}).includes(:subject) }
end
