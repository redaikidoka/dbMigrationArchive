class AddStatusToOrderIndices < ActiveRecord::Migration
  def change
    add_column :order_indices, :status, :string, after: "applicant"
    add_index  :order_indices, :status
  end
end
