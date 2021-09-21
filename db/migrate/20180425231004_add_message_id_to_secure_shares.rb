class AddMessageIdToSecureShares < ActiveRecord::Migration[5.1]
  def change
    add_column :secure_shares, :message_id, :text
  end
end
