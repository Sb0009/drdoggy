class City < ApplicationRecord
  belongs_to :patient
  validates :name, presence: true, uniqueness: true

end