class Order < ActiveRecord::Base
  attr_accessible :name, :email, :product_ids
  attr_accessible :products_attributes

  has_many :order_products
  has_many :products, through: :order_products

  validate :validate_products_length

  accepts_nested_attributes_for :order_products

private
  def validate_products_length
    if self.products.size == 0
      self.errors.add :products, 'products cant be empty'
    end
  end
end
