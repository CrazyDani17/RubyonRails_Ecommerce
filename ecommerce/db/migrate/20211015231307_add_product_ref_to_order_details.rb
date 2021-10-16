class AddProductRefToOrderDetails < ActiveRecord::Migration[6.1]
  def change
    add_reference :order_details, :product, null: false, foreign_key: true
  end
end
