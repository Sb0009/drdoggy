class CreateDoctors < ActiveRecord::Migration[7.0]
  def self.up
    create_table :doctors do |t|
      t.string :name
      t.string :speciality
      t.timestamps
    end
  end
end
