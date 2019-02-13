class CreateVets < ActiveRecord::Migration[5.1]
  def change
    create_table :vets do |t|
      t.string :vet_name
      t.string :vet_email
      t.integer :vet_phone

      t.timestamps
    end
  end
end
