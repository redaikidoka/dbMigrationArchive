class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.binary :uuid, limit: 16
      t.integer :invoice_id
      t.integer :item_id
      t.string :name
      t.integer :qty
      t.integer :price_cents
      t.integer :total_cents

      t.timestamps
    end

    add_index :line_items, :invoice_id
    add_index :line_items, :item_id
  end
end
