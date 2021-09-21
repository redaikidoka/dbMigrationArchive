class AddSbrSubmissionUser < ActiveRecord::Migration[5.1]
  def change
    add_reference :sbr_submissions, :user
  end
end
