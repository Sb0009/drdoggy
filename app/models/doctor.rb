class Doctor < ApplicationRecord
  belongs_to :specialty

  has_and_belongs_to_many :patients

  validates :name, presence: true
  validates :email, presence: true
end