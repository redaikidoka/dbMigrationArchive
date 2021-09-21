class AddInvoiceSource < ActiveRecord::Migration[5.2]
  def change
    add_column :invoices, :source, :string, default: "source_os"
    add_index :invoices, :source
  end
end
