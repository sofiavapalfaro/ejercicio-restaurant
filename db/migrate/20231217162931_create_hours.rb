class CreateHours < ActiveRecord::Migration[7.1]
  def change
    create_table :hours do |t|
      t.time :monday
      t.time :tuesday
      t.time :wednesday
      t.time :thursday
      t.time :friday
      t.time :saturday
      t.time :sunday
      t.references :restaurant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
