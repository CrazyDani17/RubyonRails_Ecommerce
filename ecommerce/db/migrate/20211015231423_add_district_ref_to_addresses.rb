class AddDistrictRefToAddresses < ActiveRecord::Migration[6.1]
  def change
    add_reference :addresses, :district, null: false, foreign_key: true
  end
end
