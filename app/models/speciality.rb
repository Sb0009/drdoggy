# frozen_string_literal: true

class Speciality < ApplicationRecord
  has_many :doctors

  def update_attributes
    # code here
  end
end
