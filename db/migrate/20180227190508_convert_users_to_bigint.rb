class ConvertUsersToBigint < ActiveRecord::Migration[5.1]
  def up
    change_column :users, :id, :bigint
    change_column :users, :default_territory_id, :bigint
    change_column :users, :partner_id, :bigint
    change_column :users, :occupation_id, :bigint
    change_column :users, :invited_by_id, :bigint
    change_column :users, :das_client_profile_id, :bigint
  end
end
