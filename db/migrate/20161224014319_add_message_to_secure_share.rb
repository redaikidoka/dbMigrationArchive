class AddMessageToSecureShare < ActiveRecord::Migration[5.0]
  def change
    add_column :secure_shares, :message, :text
  end
end
