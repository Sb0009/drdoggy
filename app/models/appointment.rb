class Appointment < ApplicationRecord
  belongs_to :doctor
  has_one :patient
  validates :passengers, presence: true ,numericality: { only_integer: true, equal_to: 1 }
  belongs_to :patient
  belongs_to :user , dependent: :destroy
  belongs_to :city
end
