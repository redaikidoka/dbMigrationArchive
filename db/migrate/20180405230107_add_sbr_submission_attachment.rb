class AddSbrSubmissionAttachment < ActiveRecord::Migration[5.1]
  def change
    add_column :sbr_submissions, :attachment, :string
  end
end
