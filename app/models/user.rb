class User < ApplicationRecord
  def self.patient
    # code here
  end

  belongs_to :doctor
  broadcasts_to :doctor
end