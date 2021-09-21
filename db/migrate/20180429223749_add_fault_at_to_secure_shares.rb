class AddFaultAtToSecureShares < ActiveRecord::Migration[5.1]
  def change
    add_column :secure_shares, :fault_at, :timestamp
  end
end
