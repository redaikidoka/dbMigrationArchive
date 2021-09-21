class ConvertCommentsToBigint < ActiveRecord::Migration[5.1]
  def up
    change_column :comments, :id, :bigint
    change_column :comments, :issue_id, :bigint
    change_column :comments, :user_id, :bigint
  end
end
