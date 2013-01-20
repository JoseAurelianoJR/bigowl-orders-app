require 'test_helper'

describe Order do
  let (:order) { Order.new }

  describe 'instance variable existence' do
    it ('should respond to name') do
      order.must_respond_to :name
    end
    it ('should respond to email') do
      order.must_respond_to :email
    end
  end

  describe 'validations' do
    it 'must always have a product' do
      order.save.must_equal false
    end
  end

  describe 'associating to products' do
    let (:product) { Product.create! name: 'mac', price: 5000 }
    let (:other_product) { Product.create! name: 'fake mac', price: 1000 }

    it 'has one product' do
      order.products << product
      order.save
      order.products.size.must_equal 1
    end

    it 'should not get products that doesnt belong to him' do
      order.products << product
      order.save
      order.products.first.wont_equal other_product
    end
  end
end