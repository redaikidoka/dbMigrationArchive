class RemoveBillingConfirmedFromOrders < ActiveRecord::Migration[5.2]
  def change
    remove_column :orders, :billing_confirmed
  end
end
