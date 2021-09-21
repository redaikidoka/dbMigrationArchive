class ConvertAccountsToBigint < ActiveRecord::Migration[5.1]
  def up
    change_column :accounts, :id, :bigint
    change_column :accounts, :alternate_updated_by_id, :bigint
    change_column :accounts, :territory_id, :bigint
    change_column :accounts, :secondary_territory_manager_id, :bigint
    change_column :accounts, :secondary_account_manager_id, :bigint
    change_column :accounts, :default_venue_id, :bigint
  end
end
