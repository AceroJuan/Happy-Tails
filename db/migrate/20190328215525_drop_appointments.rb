class DropAppointments < ActiveRecord::Migration[5.1]
  def change
    drop_table :appointments
  end
end
