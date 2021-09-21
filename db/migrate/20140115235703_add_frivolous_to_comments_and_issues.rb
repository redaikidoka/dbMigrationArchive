class AddFrivolousToCommentsAndIssues < ActiveRecord::Migration
  def change
    add_column :issues, :frivolous, :boolean, default: false
    add_column :comments, :frivolous, :boolean, default: false
  end
end
