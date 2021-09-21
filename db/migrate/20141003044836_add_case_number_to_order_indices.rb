class AddCaseNumberToOrderIndices < ActiveRecord::Migration
  def change
    add_column :order_indices, :case_number, :string, after: "state"
    add_index  :order_indices, :case_number
  end
end
