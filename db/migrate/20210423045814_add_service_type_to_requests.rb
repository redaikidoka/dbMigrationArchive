class AddServiceTypeToRequests < ActiveRecord::Migration[5.2]
  def change
    add_column :requests, :service_type, :string
    remove_column :cases, :service_type, :string
  end
end
