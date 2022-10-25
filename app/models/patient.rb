# frozen_string_literal: true

class Patient < ApplicationRecord
  has_and_belongs_to_many :doctors
  validates :name, presence: true
  validates :email, presence: true, length: { maximum: 255 },
                    # format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :location, presence: true
  validates :condition, presence: true
  scope :under_years, ->(count) { where('birthdate >= ? ', Date.today - count.years) }
  after_create { Notifier.email(self).deliver }
  def build_address
    # code here
  end
end
