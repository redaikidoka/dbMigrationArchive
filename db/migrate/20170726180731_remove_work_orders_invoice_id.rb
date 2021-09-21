class RemoveWorkOrdersInvoiceId < ActiveRecord::Migration[5.1]
  def change
    remove_column :work_orders, :invoice_id, :integer
  end
end
