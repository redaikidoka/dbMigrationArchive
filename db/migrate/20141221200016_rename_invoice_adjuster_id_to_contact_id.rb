class RenameInvoiceAdjusterIdToContactId < ActiveRecord::Migration
  def change
    remove_index :invoices, :adjuster_id
    rename_column :invoices, :adjuster_id, :contact_id
    add_index :invoices, :contact_id
  end
end
