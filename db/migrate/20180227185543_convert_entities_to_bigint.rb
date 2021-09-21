class ConvertEntitiesToBigint < ActiveRecord::Migration[5.1]
  def up
    change_column :entities, :id, :bigint
    change_column :entities, :agent_id, :bigint
    change_column :entities, :daisy_claims_administrator_id, :bigint
    change_column :entities, :price_list_id, :bigint
    change_column :entities, :account_id, :bigint
  end
end
