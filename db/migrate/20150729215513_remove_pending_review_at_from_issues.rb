class RemovePendingReviewAtFromIssues < ActiveRecord::Migration
  def change
    remove_column :issues, :pending_review_at
  end
end
