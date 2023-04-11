# app/controllers/cart_items_controller.rb

# class CartItemsController < ApplicationController
#   # def create
#   #   @book = Book.find(params[:book_id])
#   #   current_cart.add_item(@book)
#   #   redirect_to cart_path
#   # end
  
#   # def destroy
#   #   @book = Book.find(params[:id])
#   #   current_cart.remove_item(@book)
#   #   redirect_to cart_path
#   # end
# end

# app/controllers/cart_items_controller.rb

class CartItemsController < ApplicationController

  def index
    @cart_items = current_cart.cart_items
  end

  # GET /cart_items/new
  def new
    @cart_item = CartItem.new
  end
   
  def create
    @book = Book.find(book_id)
    current_cart.add_item(@book)
    redirect_to shopping_carts_path
  end
  
  def update
    @book = Book.find(book_id)
    current_cart.update_item_quantity(@book, params[:quantity].to_i)
    redirect_to shopping_carts_path
  end

  def destroy
    @book = Book.find(book_id)
    current_cart.remove_item(@book)
    redirect_to shopping_carts_path
  end
end



