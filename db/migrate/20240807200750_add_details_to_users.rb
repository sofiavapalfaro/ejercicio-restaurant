class AddDetailsToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :username, :string
    add_column :users, :name, :string
    add_column :users, :last_name, :string
    add_column :users, :photo, :string
    add_column :users, :address, :string
    add_column :users, :country, :string
    add_column :users, :telephone, :string
  end
end
