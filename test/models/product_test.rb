require 'test_helper'

describe Product do
  describe 'instance variable existence' do
    it ('should respond to name') do
      Product.new.must_respond_to :name
    end
    it ('should respond to price') do
      Product.new.must_respond_to :price
    end
  end
end