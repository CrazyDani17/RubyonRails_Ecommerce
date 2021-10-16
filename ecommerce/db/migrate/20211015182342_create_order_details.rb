class CreateOrderDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :order_details do |t|
      t.integer :quantity, null: false
      
      t.timestamps
    #add_reference :order_details, :order, foreign_key: true
    #add_reference :order_details, :product, foreign_key: true
    end
  end
end
