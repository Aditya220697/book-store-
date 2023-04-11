class ShoppingCartsController < ApplicationController
    
    def create
    end
  
  
    def show
      @cart_items = Current.user.cart_items
      @total_price = calculate_total_price(@cart_items)
    end


    private
  
    def calculate_total_price(cart_items)
      total_price = 0
      cart_items.each do |book_id, quantity|
        total_price += book_id.price * quantity
      end
      total_price
    end
end 