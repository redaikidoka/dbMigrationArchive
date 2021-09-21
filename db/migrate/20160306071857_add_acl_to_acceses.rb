class AddAclToAcceses < ActiveRecord::Migration
  def change
    add_column :accesses, :acl, :jsonb, null: false, default: "{}"
  end
end
