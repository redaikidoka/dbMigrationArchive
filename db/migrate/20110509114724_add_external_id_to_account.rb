class AddExternalIdToAccount < ActiveRecord::Migration
  def change
    add_column :accounts, :external_id, :string
    add_column :orders, :external_user_id, :string
  end
end
