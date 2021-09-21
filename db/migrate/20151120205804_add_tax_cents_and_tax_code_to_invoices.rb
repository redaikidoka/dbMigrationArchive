class AddTaxCentsAndTaxCodeToInvoices < ActiveRecord::Migration
  def change
    add_column :invoices, :tax_cents, :integer
    add_column :invoices, :tax_code, :string
  end
end
