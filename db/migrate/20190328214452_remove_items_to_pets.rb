class RemoveItemsToPets < ActiveRecord::Migration[5.1]
  def change
    remove_column :pets, :breed, :string
    remove_column :pets, :bio, :text
    remove_column :pets, :picture, :string
    add_column :pets, :pet_breed, :string
    add_column :pets, :pet_bio, :text
    add_column :pets, :pet_picture, :string
  end
end
