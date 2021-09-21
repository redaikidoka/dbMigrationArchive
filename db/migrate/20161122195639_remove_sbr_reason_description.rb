class RemoveSbrReasonDescription < ActiveRecord::Migration[5.0]
  def change
    remove_column :sbr_submissions, :sbr_reason_description, :text
  end
end
