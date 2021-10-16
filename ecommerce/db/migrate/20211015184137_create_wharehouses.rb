class CreateWharehouses < ActiveRecord::Migration[6.1]
  def change
    create_table :wharehouses do |t|
      t.string :wharehouse_code, null: false
      t.integer :quantity, null: false

      t.timestamps
    #add_reference :wharehouses, :product, foreign_key: true
    end
  end
end
