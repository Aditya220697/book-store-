class Book < ApplicationRecord
    belongs_to :user
    # belongs_to :author
    # belongs_to :category
    has_many :cart_items, dependent: :destroy
    has_many :shopping_carts, through: :cart_items
    mount_uploader :image, ImageUploader

end
