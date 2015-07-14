class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.text :description
      t.float :lat
      t.float :lon
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
