class AddProductToOrderProducts < ActiveRecord::Migration
  def change
    add_column :order_products, :product_id, :integer
  end
end
