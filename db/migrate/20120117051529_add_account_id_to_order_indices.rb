class AddAccountIdToOrderIndices < ActiveRecord::Migration
  def change
    add_column :order_indices, :account_id, :integer, after: "id"
    add_index  :order_indices, :id
    add_index  :order_indices, :account_id
    add_index  :order_indices, :date_received
    add_index  :order_indices, :applicant
  end
end
