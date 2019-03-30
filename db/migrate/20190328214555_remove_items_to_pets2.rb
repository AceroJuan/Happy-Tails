class RemoveItemsToPets2 < ActiveRecord::Migration[5.1]
  def change
    remove_column :pets, :pet_race, :string
    
  end
end
