class RemoveCommentEvent < ActiveRecord::Migration
  def up
    remove_column :comments, :event
  end

  def down
    add_column :comments, :event, :string, after: "user_id"
  end
end
