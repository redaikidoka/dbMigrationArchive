class AddBillingPartiesOrders < ActiveRecord::Migration
  def up
    create_table :billing_parties_orders, :id => false do |t|
      t.integer :billing_party_id
      t.integer :order_id
    end
  end

  def down
    drop_table :billing_parties_orders
  end
end
