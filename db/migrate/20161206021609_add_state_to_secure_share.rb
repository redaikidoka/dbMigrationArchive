class AddStateToSecureShare < ActiveRecord::Migration[5.0]
  def change
    add_column :secure_shares, :state, :string, index: true
    add_column :secure_shares, :draft_at, :datetime
    add_column :secure_shares, :pending_at, :datetime
    add_column :secure_shares, :sent_at, :datetime
  end
end
