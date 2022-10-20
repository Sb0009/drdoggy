# frozen_string_literal: true

class Appointment < ApplicationRecord
  belongs_to :doctor
  has_one :patient
  validates :time, :date, presence: true
  belongs_to :patient, dependent: :delete
  belongs_to :user, dependent: :destroy

  def patient_id=
    # code here
  end

  def doctor_id=
    # code here
  end
end
