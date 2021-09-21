class AddVerifiedEntityNameToMaterializedRequestRow < ActiveRecord::Migration[5.2]
  def change
    add_column :materialized_request_rows, :verified_entity_name, :string
    add_column :materialized_request_rows, :verified_phone, :string
    add_column :materialized_request_rows, :requested_phone, :string
  end
end
