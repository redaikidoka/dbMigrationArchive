class CreateInvoiceCaptures < ActiveRecord::Migration
  def change
    create_table :invoice_captures do |t|
      t.references :user, index: true, null: false
      t.datetime :date_received, null: false
      t.string :ref_number, null: false
      t.integer :payment_cents, null: false
      t.integer :writedown_cents, null: false
      t.text :note
      t.jsonb :data
      t.timestamps null: false
    end
  end
end
