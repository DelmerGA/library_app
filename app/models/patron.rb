class Patron < ActiveRecord::Base
  attr_accessible :address, :age, :card_number, :name, :fine, :signup_date

  has_many :books

  before_create :record_signup_date
  before_destroy :check_standing
	before_update :check_standing

  private
  	def record_signup_date
  		self.signup_date = Date.today
  	end

  	def check_standing 
		# Check each book standing
		 today = Date.today
		 overdue_items = Array.new

		 books.each do |book|
	 		if book.due_date < today
	 			 overdue_items << book
	 		end
		 end	

			raise overdue_items.inspect		
  	end

  end
