class DropVets < ActiveRecord::Migration[5.1]
  def change
    drop_table :vets
  end
end
