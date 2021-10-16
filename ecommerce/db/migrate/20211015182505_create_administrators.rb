class CreateAdministrators < ActiveRecord::Migration[6.1]
  def change
    create_table :administrators do |t|
      t.string :email, null: false
      t.string :password, null: false
      t.string :username, null: false
      t.string :name, null: false
      t.string :lastname, null: false

      t.timestamps
    end
  end
end
