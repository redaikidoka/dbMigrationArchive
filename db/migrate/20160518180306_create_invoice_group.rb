class CreateInvoiceGroup < ActiveRecord::Migration
  def change
    create_table :invoice_groups do |t|
      t.integer :invoice_ids, array: true, default: []
      t.references :user, index: true, null: false

      t.timestamps null: false
    end

    add_index :invoice_groups, :invoice_ids, using: :gin
  end
end
