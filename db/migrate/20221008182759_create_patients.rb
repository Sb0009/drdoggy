# frozen_string_literal: true

class CreatePatients < ActiveRecord::Migration[7.0]
  def self.up
    create_table :patients do |t|
      t.string :first_name
      t.string :last_name
      t.timestamps


    end
  end
end
