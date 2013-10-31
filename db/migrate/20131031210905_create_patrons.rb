class CreatePatrons < ActiveRecord::Migration
  def change
    create_table :patrons do |t|
      t.string :name
      t.string :card_number
      t.string :address
      t.integer :age

      t.timestamps
    end
  end
end
