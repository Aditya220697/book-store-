class ShoppingCart < ApplicationRecord
    belongs_to :user
    has_many :cart_items, dependent: :destroy
    has_many :books, through: :cart_items
    
    # def add_item(book)
    #   cart_item = cart_items.find_or_initialize_by(book: book)
    #   cart_item.quantity += 1
    #   cart_item.save
    # end
  
    # def update_item_quantity(book, quantity)
    #   cart_item = cart_items.find_by(book: book)
    #   if quantity == 0
    #     cart_item.destroy
    #   else
    #     cart_item.update(quantity: quantity)
    #   end
    # end
  
    # def remove_item(book)
    #   cart_item = cart_items.find_by(book: book)
    #   cart_item.destroy if cart_item
    # end
  
    # def total_price
    #   cart_items.map { |book| book.book.price * book.quantity }.sum
    # end
end
  
