# class CartItem < ApplicationRecord
#   belongs_to :book
#   belongs_to :shopping_cart

#   # validates :quantity numericality: {only-integer: true, greater_than: 0}

#   # app/models/cartitem.rb

#   def total_price
#     book.price * quantity
#   end

# end

# app/models/cart_item.rb

class CartItem < ApplicationRecord
  belongs_to :book
  belongs_to :shopping_carts
  
  def subtotal
    quantity * book.price
  end
end

