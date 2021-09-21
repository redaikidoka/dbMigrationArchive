class RemoveInvoiceTaxCents < ActiveRecord::Migration
  def change
    remove_column :invoices, :tax_cents
  end
end
