class City < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :doctors, dependent: :destroy, :foreign_key => "city_id", :class_name => "Doctor"
  has_many :patients, dependent: :destroy, :foreign_key => "city_id", :class_name => "Patient"
  has_many :appointments
end