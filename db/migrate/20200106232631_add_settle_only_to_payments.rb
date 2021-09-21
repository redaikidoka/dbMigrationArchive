class AddSettleOnlyToPayments < ActiveRecord::Migration[5.2]
  def change
    add_column :payments, :settle_only, :boolean, null: false, default: false
  end
end
