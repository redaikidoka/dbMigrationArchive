class AddPinnedCommentIdToIssues < ActiveRecord::Migration[5.1]
  def change
    add_reference(:issues, :pinned_comment, foreign_key: {to_table: :comments})
  end
end
