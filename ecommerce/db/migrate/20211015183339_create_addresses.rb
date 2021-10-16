class CreateAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :addresses do |t|
      t.string :address, null: false
      t.string :postal_code, null: false

      t.timestamps
    #add_reference :addresses, :distric, foreign_key: true
    #add_reference :addresses, :customer, foreign_key: true
    end
  end
end
