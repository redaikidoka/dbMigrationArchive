class CreatePrintItems < ActiveRecord::Migration[5.2]
  def change
    create_table :print_items do |t|
      t.references :request, index: true
      t.integer :page_count
      t.integer :xcd

      t.string :ship_to_name, null: false
      t.string :ship_to_street, null: false
      t.string :ship_to_city, null: false
      t.string :ship_to_state, null: false
      t.string :ship_to_zip, null: false

      t.string :delivery_method, null: false
      t.string :state

      t.datetime :pending_at
      t.datetime :ready_to_print_at
      t.datetime :printed_at

      t.timestamps
    end
  end
end
