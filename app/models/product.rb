class Product < ActiveRecord::Base
  attr_accessible :name, :price

  has_many :order_products
  has_many :orders, through: :order_products
end
