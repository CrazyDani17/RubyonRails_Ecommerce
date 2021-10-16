class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.string :product_code, null: false
      t.text :description
      t.string :image
      t.decimal :price, null: false
      t.decimal :weight
      t.string :status, null: false

      t.timestamps
    #add_reference :products, :category, foreign_key: true
    end
  end
end
