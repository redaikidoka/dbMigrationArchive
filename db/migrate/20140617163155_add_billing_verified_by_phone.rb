class AddBillingVerifiedByPhone < ActiveRecord::Migration
  def change
    add_column :orders, :billing_confirmed, :boolean
  end
end
