class CreateServices < ActiveRecord::Migration[5.1]
  def change
    create_table :services do |t|
      t.string :service_name
      t.integer :service_cost

      t.timestamps
    end
  end
end
