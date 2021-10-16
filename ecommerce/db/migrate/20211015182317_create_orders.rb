class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.string :order_code, null: false
      t.decimal :total, null: false
      
      t.timestamps
    #add_reference :orders, :shipping_method, foreign_key: true
    #add_reference :orders, :payment_method, foreign_key: true
    #add_reference :orders, :customer, foreign_key: true
    end
  end
end
