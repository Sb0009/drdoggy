class Doctor < ApplicationRecord
  belongs_to :specialty

  has_and_belongs_to_many :patients
  has_many :appointments
	has_many :patients, through: :appointments
  validates :name, presence: true
  validates :email, presence: true
end
