class CreateProvinces < ActiveRecord::Migration[6.1]
  def change
    create_table :provinces do |t|
      t.string :name, null: false

      t.timestamps
    #add_reference :provinces, :country, foreign_key: true
    end
  end
end
