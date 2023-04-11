class AuthorsController < ApplicationController
  # def new 
  #   @author
  # end 
  def index
    @authors = Author.all
  end

  def new
     @author = Author.new
  end 


  def create
     
  end
 
  def show
    @author= Author.find[params:[id]]
    @books=author.books
  end

  
end