class AddInvoiceLegacyRollups < ActiveRecord::Migration[5.1]
  def change
    add_column :invoices, :legacy_payment_cents, :integer, default: 0
    add_column :invoices, :legacy_writedown_cents, :integer, default: 0
  end
end
