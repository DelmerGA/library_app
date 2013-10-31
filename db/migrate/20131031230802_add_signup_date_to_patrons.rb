class AddSignupDateToPatrons < ActiveRecord::Migration
  def change
    add_column :patrons, :signup_date, :datetime
  end
end
