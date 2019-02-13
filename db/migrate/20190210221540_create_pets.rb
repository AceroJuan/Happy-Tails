class CreatePets < ActiveRecord::Migration[5.1]
  def change
    create_table :pets do |t|
      t.string :pet_name
      t.integer :pet_age
      t.string :pet_race
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
