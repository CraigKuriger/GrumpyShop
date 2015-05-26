class Product < ActiveRecord::Base
  belongs_to :category
  has_many :cart_products, foreign_key: "product_id"
  has_many :carts, through: :cart_products
end
