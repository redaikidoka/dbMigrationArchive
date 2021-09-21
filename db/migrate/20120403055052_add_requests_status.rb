class AddRequestsStatus < ActiveRecord::Migration
  def up
    add_column :requests, :status, :string, after: "location_id"
  end

  def down
    remove_column :requests, :status
  end
end
