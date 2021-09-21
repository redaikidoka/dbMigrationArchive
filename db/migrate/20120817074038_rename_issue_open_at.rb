class RenameIssueOpenAt < ActiveRecord::Migration
  def up
    rename_column :issues, :open_at, :opened_at
  end

  def down
    rename_column :issues, :opened_at, :open_at
  end
end
