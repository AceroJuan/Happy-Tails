class AddVetIdToServices < ActiveRecord::Migration[5.1]
  def change
    add_column :services, :vet_id, :integer
    add_index :services, :vet_id
  end
end
