class AddFieldsToRequestsForCn < ActiveRecord::Migration[5.2]
  def change
    rename_column :requests, :edd_claim_ID, :edd_claim_id
    add_column :cases, :source, :string
  end
end
