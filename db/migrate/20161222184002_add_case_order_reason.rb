class AddCaseOrderReason < ActiveRecord::Migration[5.0]
  def change
    add_column :case_orders, :reason, :string
  end
end
