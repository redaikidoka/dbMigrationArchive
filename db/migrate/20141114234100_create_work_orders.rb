class CreateWorkOrders < ActiveRecord::Migration
  def change
    create_table :work_orders do |t|
      t.binary :uuid, limit: 16
      t.string :origin_type
      t.integer :origin_id
      t.integer :invoice_id
      t.string :delivery_method

      t.timestamps
    end

    add_index :work_orders, [:origin_type, :origin_id],
      name: "work_orders_origin", unique: true
  end
end
