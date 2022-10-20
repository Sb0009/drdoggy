# frozen_string_literal: true

class Patient < ApplicationRecord
  has_and_belongs_to_many :doctors
  validates :name, presence: true
  validates :email, presence: true
  scope :under_years, ->(count) { where('birthdate >= ? ', Date.today - count.years) }

  def build_address
    # code here
  end
end
