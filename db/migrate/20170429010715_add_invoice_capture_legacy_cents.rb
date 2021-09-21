class AddInvoiceCaptureLegacyCents < ActiveRecord::Migration[5.0]
  def up
    add_column :invoice_captures, :legacy_payment_cents, :integer, default: 0
    add_column :invoice_captures, :legacy_writedown_cents, :integer, default: 0

    InvoiceCapture.update_all(legacy_payment_cents: 0)
    InvoiceCapture.update_all(legacy_writedown_cents: 0)

    change_column_null :invoice_captures, :legacy_payment_cents, false
    change_column_null :invoice_captures, :legacy_writedown_cents, false
  end

  def down
    remove_column :invoice_captures, :legacy_payment_cents
    remove_column :invoice_captures, :legacy_writedown_cents
  end
end
