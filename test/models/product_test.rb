require 'test_helper'

describe Product do
  describe 'instance variable existence' do
    let (:product) { Product.new }

    it ('should respond to name') do
      product.must_respond_to :name
    end
    it ('should respond to price') do
      product.must_respond_to :price
    end
  end

  describe 'associating to orders' do
    let (:order) { Order.new }
    let (:product) { Product.create! name: 'mac', price: 5000 }
    let (:other_product) { Product.create! name: 'fake mac', price: 1000 }

    it 'has many orders' do
      order.products << product
      order.save
      product.orders.wont_be_empty
    end

    it 'should not get orders from other products' do
      product.orders.must_be_empty
    end

    it 'should not get orders from other products' do
      order.products << other_product
      order.save
      product.orders.must_be_empty
    end
  end
end