class CreateDistricts < ActiveRecord::Migration[6.1]
  def change
    create_table :districts do |t|
      t.string :name, null: false

      t.timestamps
    #add_reference :districts, :city, foreign_key: true
    end
  end
end
