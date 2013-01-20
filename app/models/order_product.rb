class OrderProduct < ActiveRecord::Base
  # attr_accessible :title, :body

  belongs_to :product
  belongs_to :order
end
