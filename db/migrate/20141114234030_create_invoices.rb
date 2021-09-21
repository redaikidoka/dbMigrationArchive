class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.binary :uuid, limit: 16
      t.integer :work_order_id
      t.integer :entity_id
      t.integer :address_id
      t.integer :adjuster_id
      t.integer :price_list_id
      t.string :state
      t.integer :subtotal_cents
      t.integer :total_cents
      t.integer :amount_due_cents
      t.datetime :draft_at
      t.datetime :finalized_at
      t.datetime :cancelled_at

      t.timestamps
    end

    add_index :invoices, :work_order_id, unique: true
    add_index :invoices, :entity_id
    add_index :invoices, :address_id
    add_index :invoices, :adjuster_id
    add_index :invoices, :price_list_id
  end
end
