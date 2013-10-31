class Book < ActiveRecord::Base
  attr_accessible :description, :isbn, :title, :patron_id, :checkout_date, :due_date
  
  belongs_to :patron

  has_many :book_authors
  has_many :authors, through: :book_authors 

  scope :delinquent, where('due_date < ?', Date.today)
end
