class CreateHours < ActiveRecord::Migration[7.1]
  def change
    create_table :hours do |t|
      t.time :monday
      t.time :monday_closing
      t.time :tuesday
      t.time :tuesday_closing
      t.time :wednesday
      t.time :wednesday_closing
      t.time :thursday
      t.time :thursday_closing
      t.time :friday
      t.time :friday_closing
      t.time :saturday
      t.time :saturday_closing
      t.time :sunday
      t.time :sunday_closing
      t.references :restaurant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
