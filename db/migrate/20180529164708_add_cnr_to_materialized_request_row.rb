class AddCnrToMaterializedRequestRow < ActiveRecord::Migration[5.1]
  def change
    add_column :materialized_request_rows, :cnr, :boolean

    add_index :materialized_request_rows, :cnr
  end
end
