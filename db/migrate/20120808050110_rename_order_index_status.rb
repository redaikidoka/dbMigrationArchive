class RenameOrderIndexStatus < ActiveRecord::Migration
  def up
    rename_column :order_indices, :status, :state
  end

  def down
    rename_column :order_indices, :state, :status
  end
end
