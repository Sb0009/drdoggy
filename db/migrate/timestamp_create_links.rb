class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.integer :child_id
      t.integer :order
      t.text :body
      t.references :page, index: true

      t.timestamps
    end
  end
end
