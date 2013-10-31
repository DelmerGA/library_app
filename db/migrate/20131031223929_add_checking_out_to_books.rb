class AddCheckingOutToBooks < ActiveRecord::Migration
  def change
    add_column :books, :due_date, :datetime
    add_column :books, :checkout_date, :datetime
  end
end
