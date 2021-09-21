class AddSettleCentsToInvoices < ActiveRecord::Migration[5.2]
  def change
    add_column :invoices, :settle_cents, :integer, default: 0
  end
end
