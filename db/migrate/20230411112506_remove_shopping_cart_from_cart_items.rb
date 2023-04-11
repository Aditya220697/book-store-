class RemoveShoppingCartFromCartItems < ActiveRecord::Migration[7.0]
  def change
    remove_reference :cart_items, :shopping_cart, null: false, foreign_key: true
  end
end
