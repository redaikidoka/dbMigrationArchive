class AddPendingReviewAtToIssues < ActiveRecord::Migration
  def change
    add_column :issues, :pending_review_at, :datetime
  end
end
