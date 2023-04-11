#  email:string
#  password_digest:string
#
# password:string virtual
# password_confirmation:string virtual

class User < ApplicationRecord
    has_secure_password

    has_many :books

    has_one :shopping_cart

    has_many :cart_items, through: :shopping_cart


    validates :name, presence: true 
    validates :email, presence: true, confirmation: { case_sensitive: false }, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: "must be a valid email address" }
    validates :password, presence: true 
    validates :password_confirmation, presence: true 
    

end
