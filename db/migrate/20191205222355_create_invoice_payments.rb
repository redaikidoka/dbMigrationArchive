class CreateInvoicePayments < ActiveRecord::Migration[5.2]
  def change
    create_table :invoice_payments do |t|
      t.references :user, index: true, null: false
      t.references :payment, index: true, null: false
      t.references :invoice, index: true, null: false
      t.string :item_type, null: false
      t.boolean :archived, default: false
      t.integer :amount_cents, null: false, default: 0
      t.text :note

      t.timestamps
    end
  end
end
