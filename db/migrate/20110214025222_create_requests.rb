class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.integer :order_id
      t.integer :location_id
      t.string :record_type
      t.text :instructions

      t.timestamps
    end

  end
end
