class CreateMaterializedInvoiceRows < ActiveRecord::Migration[5.1]
  def change
    create_table :materialized_invoice_rows do |t|
      # primary key will use invoice.id

      # Case/Compound Columns
      t.text :applicant_name
      t.text :claim_number
      t.text :case_number

      # Work Order
      t.integer :work_order_number

      # Order
      t.text :order_type

      # Entity
      t.integer :entity_id
      t.text :entity_name

      # Account
      t.text :display_name
      t.integer :account_id
      t.integer :territory_id

      # Daisy Bill
      t.integer :daisy_id
    end
  end
end
