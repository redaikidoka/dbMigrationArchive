class AddUuidToRequestsAndParties < ActiveRecord::Migration
  def change
    add_column :requests, :uuid, :binary, limit: 16
    add_column :parties,  :uuid, :binary, limit: 16
  end
end
