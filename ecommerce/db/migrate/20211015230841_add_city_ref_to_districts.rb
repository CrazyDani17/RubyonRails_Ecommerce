class AddCityRefToDistricts < ActiveRecord::Migration[6.1]
  def change
    add_reference :districts, :city, null: false, foreign_key: true
  end
end
