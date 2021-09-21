class RemoveInvoiceInOsFromRequests < ActiveRecord::Migration
  def change
    remove_column :requests, :invoice_in_os
  end
end
