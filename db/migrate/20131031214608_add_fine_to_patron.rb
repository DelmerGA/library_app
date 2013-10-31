class AddFineToPatron < ActiveRecord::Migration
  def change
    add_column :patrons, :fine, :float
  end
end
