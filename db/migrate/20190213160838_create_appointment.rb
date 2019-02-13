class CreateAppointment < ActiveRecord::Migration[5.1]
  def change
    create_table :appointments do |t|

      t.datetime :appointment_time
      t.references :user, foreign_key: true
      t.references :vet, foreign_key: true
      t.references :service, foreign_key: true
      t.references :pet, foreign_key: true
    end
  end
end
