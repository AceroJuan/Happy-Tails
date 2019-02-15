class DeleteUserVetToAppointment < ActiveRecord::Migration[5.1]
  def change
    remove_column :appointments, :vet_id
    remove_column :appointments, :user_id
  end
end
