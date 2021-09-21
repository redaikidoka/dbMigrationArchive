class RemoveBillingParties < ActiveRecord::Migration
  def up
    drop_table :billing_parties_orders
    drop_table :billing_parties
  end

  def down
    create_table :billing_parties_orders, :id => false do |t|
      t.integer :billing_party_id
      t.integer :order_id
    end
    
    create_table :billing_parties do |t|
      t.string :name
      t.string :phone
      t.string :fax
      t.string :street
      t.string :city
      t.string :state
      t.string :zip

      t.timestamps
    end
  end
end
