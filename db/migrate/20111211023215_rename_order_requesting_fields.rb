class RenameOrderRequestingFields < ActiveRecord::Migration
  def up
    rename_column :orders, :request_attorney, :requesting_attorney
    rename_column :orders, :request_bar, :requesting_bar
    rename_column :orders, :request_email, :requesting_email
  end

  def down
    rename_column :orders, :requesting_attorney, :request_attorney
    rename_column :orders, :requesting_bar, :request_bar
    rename_column :orders, :requesting_email, :request_email
  end
end
