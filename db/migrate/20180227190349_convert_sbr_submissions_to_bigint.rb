class ConvertSbrSubmissionsToBigint < ActiveRecord::Migration[5.1]
  def up
    change_column :sbr_submissions, :id, :bigint
    change_column :sbr_submissions, :invoice_id, :bigint
  end
end
