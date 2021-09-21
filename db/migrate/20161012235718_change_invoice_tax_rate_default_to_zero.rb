class ChangeInvoiceTaxRateDefaultToZero < ActiveRecord::Migration
  def change
    change_column :invoices, :tax_rate, :decimal, precision: 8, scale: 6, default: 0
  end
end
