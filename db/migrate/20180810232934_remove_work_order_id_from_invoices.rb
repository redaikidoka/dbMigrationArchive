class RemoveWorkOrderIdFromInvoices < ActiveRecord::Migration[5.2]
  def change
    remove_reference :invoices, :work_order, index: true
  end
end
