class AddExternalUidToParties < ActiveRecord::Migration
  def change
    add_column :parties, :external_uid, :string, after: "id"
  end
end
