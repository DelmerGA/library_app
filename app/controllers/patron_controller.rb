class PatronController < ApplicationController
  def index
  	@patrons = Patron.all
  	@patron = Patron.new
  end

  def new
  end

  def show
  end

  def edit
  end
end
