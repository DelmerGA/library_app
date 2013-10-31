class AuthorsController < ApplicationController
  def index
  	@authors = Author.all
  	@author = Author.new
  end

  def new
  end

  def show
  end

  def edit
  end
end
