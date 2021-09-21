class CreateInvoiceDeltas < ActiveRecord::Migration
  def change
    create_table :invoice_deltas do |t|
      t.references :invoice, index: true, foreign_key: true

      t.integer :total_delta_cents, default: 0
      t.integer :tax_delta_cents, default: 0
      t.integer :taxable_delta_cents, default: 0
      t.integer :nontaxable_delta_cents, default: 0

      t.integer :year
      t.integer :week

      t.timestamps null: false
    end

    add_index :invoice_deltas, [:year, :week]
  end
end

