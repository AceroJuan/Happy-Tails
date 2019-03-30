class AddItemsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :name, :string
    add_column :users, :last_name, :string
    add_column :users, :role, :boolean
    add_column :users, :bio, :text 
    add_column :users, :picture, :string 
  end
end
