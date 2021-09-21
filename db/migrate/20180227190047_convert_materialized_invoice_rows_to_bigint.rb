class ConvertMaterializedInvoiceRowsToBigint < ActiveRecord::Migration[5.1]
  def up
    change_column :materialized_invoice_rows, :entity_id, :bigint
    change_column :materialized_invoice_rows, :account_id, :bigint
    change_column :materialized_invoice_rows, :territory_id, :bigint
    change_column :materialized_invoice_rows, :daisy_id, :bigint
    change_column :materialized_invoice_rows, :ar_clerk_id, :bigint
  end
end
