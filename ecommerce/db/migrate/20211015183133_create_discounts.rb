class CreateDiscounts < ActiveRecord::Migration[6.1]
  def change
    create_table :discounts do |t|
      t.string :name, null: false
      t.text :description
      t.decimal :discount_percent, null: false
      t.boolean :active, null: false

      t.timestamps
    #add_reference :discounts, :product, foreign_key: true
    end
  end
end
