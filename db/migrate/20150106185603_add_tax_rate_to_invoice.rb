class AddTaxRateToInvoice < ActiveRecord::Migration
  def change
    add_column :invoices, :tax_rate, :decimal, precision: 8, scale: 6
    add_column :invoices, :tax_cents, :integer
  end
end
