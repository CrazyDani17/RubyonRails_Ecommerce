class AddProductRefToDiscounts < ActiveRecord::Migration[6.1]
  def change
    add_reference :discounts, :product, null: false, foreign_key: true
  end
end
