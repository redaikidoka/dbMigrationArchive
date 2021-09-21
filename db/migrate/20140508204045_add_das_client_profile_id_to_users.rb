class AddDasClientProfileIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :das_client_profile_id, :integer
  end
end
