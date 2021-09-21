class AddInvoiceMethodToEntities < ActiveRecord::Migration
  def change
    add_column :entities, :invoice_method, :integer, default: 0
  end
end
