class CreateRestaurants < ActiveRecord::Migration[7.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :adress
      t.integer :rating
      t.string :category

      t.timestamps
    end
  end
end
