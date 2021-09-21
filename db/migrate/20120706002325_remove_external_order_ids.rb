class RemoveExternalOrderIds < ActiveRecord::Migration
  def up
    remove_column :orders, :external_account_id
    remove_column :orders, :external_case_id
    remove_column :orders, :external_user_id
  end

  def down
    add_column :orders, :external_account_id, :string, after: "account_id"
    add_column :orders, :external_case_id, :string, after: "external_account_id"
    add_column :orderx, :external_user_id, :string, after: "external_case_id"
  end
end
