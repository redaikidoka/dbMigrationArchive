class AddUidToRequests < ActiveRecord::Migration
  def change
    add_column :requests, :uid, :string, after: "id"
    add_index :requests, :uid, unique: true
  end
end
