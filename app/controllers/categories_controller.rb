class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end 
  
  def show
    @category = Category.find(params[:id])
    @books = @category.books
  end
  
  def create
     
  end
end
