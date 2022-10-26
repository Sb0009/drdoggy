# frozen_string_literal: true

class Specialty < ApplicationRecord
  has_many :doctors

  def update_attributes
    # code here
  end
end
