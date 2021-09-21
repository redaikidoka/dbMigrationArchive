class ConvertSecureSharesToBigint < ActiveRecord::Migration[5.1]
  def up
    change_column :secure_shares, :id, :bigint
    change_column :secure_shares, :user_id, :bigint
    change_column :secure_shares, :entity_contact_id, :bigint
  end
end
