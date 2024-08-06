class AddClosingTimesToHours < ActiveRecord::Migration[7.1]
  def change
    add_column :hours, :monday_closing, :time
    add_column :hours, :tuesday_closing, :time
    add_column :hours, :wednesday_closing, :time
    add_column :hours, :thursday_closing, :time
    add_column :hours, :friday_closing, :time
    add_column :hours, :saturday_closing, :time
    add_column :hours, :sunday_closing, :time
  end
end
