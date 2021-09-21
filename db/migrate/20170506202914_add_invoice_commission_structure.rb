class AddInvoiceCommissionStructure < ActiveRecord::Migration[5.0]
  def change
    add_column :invoices, :commission_structure, :string
  end
end
