class AddColumnToServices < ActiveRecord::Migration[5.1]
  def change
    add_column :services, :service_description, :text
    add_column :services, :service_picture, :string
  end
end
