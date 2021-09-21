class AddCommentIssueState < ActiveRecord::Migration
  def change
    add_column :comments, :issue_state, :string, after: "body"
  end
end
