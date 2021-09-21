class CreateOrderCaches < ActiveRecord::Migration
  def change
    create_table :order_caches do |t|
      t.integer :user_id
      t.text :object

      t.timestamps
    end
  end
end
