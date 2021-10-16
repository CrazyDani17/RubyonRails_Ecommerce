class AddCountryRefToProvinces < ActiveRecord::Migration[6.1]
  def change
    add_reference :provinces, :country, null: false, foreign_key: true
  end
end
