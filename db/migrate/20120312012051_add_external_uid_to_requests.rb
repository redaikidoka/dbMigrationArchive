class AddExternalUidToRequests < ActiveRecord::Migration
  def change
    add_column :requests, :external_uid, :string, after: "uid"
  end
end
