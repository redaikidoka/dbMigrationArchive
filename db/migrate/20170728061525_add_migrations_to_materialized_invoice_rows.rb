class AddMigrationsToMaterializedInvoiceRows < ActiveRecord::Migration[5.1]
  def change
    add_index :materialized_invoice_rows, :entity_name
    add_index :materialized_invoice_rows, :entity_id
    add_index :materialized_invoice_rows, :display_name
    add_index :materialized_invoice_rows, :account_id
    add_index :materialized_invoice_rows, :territory_id
    add_index :materialized_invoice_rows, :claim_number
    add_index :materialized_invoice_rows, :applicant_name
    add_index :materialized_invoice_rows, :case_number
    add_index :materialized_invoice_rows, :work_order_number
    add_index :materialized_invoice_rows, :order_type
    add_index :materialized_invoice_rows, :daisy_id
  end
end
