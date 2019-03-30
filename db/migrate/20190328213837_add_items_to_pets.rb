class AddItemsToPets < ActiveRecord::Migration[5.1]
  def change
    add_column :pets, :pet_breed, :string
    add_column :pets, :pet_bio, :text
    add_column :pets, :pet_picture, :string
    
  end
end
