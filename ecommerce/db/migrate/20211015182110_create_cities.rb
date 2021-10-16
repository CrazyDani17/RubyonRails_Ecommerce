class CreateCities < ActiveRecord::Migration[6.1]
  def change
    create_table :cities do |t|
      t.string :name, null: false

      t.timestamps
    #add_reference :cities, :province, foreign_key: true
    end
  end
end
