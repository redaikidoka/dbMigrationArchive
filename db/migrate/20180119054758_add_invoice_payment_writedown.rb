class AddInvoicePaymentWritedown < ActiveRecord::Migration[5.1]
  def change
    add_column :invoices, :payment_cents, :integer, default: 0
    add_column :invoices, :writedown_cents, :integer, default: 0
  end
end
