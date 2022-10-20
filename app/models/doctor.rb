# frozen_string_literal: true

class Doctor < ApplicationRecord
  belongs_to :speciality

  has_and_belongs_to_many :patients

  validates :name, presence: true
  validates :email, presence: true
  validates :speciality, presence: true
  validates :location, presence: true

  def specialities
    # code here
  end
end
