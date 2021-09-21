class AddDasClientProfileIdToDasNotices < ActiveRecord::Migration[5.0]
  def change
    add_column :das_notices, :das_client_profile_id, :integer
  end
end
