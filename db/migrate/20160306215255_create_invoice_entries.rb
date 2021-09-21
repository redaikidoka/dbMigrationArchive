class CreateInvoiceEntries < ActiveRecord::Migration
  def change
    create_table :invoice_entries do |t|
      t.references :invoice, index: true, null: false
      t.references :invoice_capture, index: true, null: false
      t.references :user, null: false
      t.string :entry_type, null: false
      t.integer :amount_cents, null: false
      t.timestamps null: false
    end
  end
end
