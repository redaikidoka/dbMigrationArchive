class PopulateServiceDisputes < ActiveRecord::Migration
  def up
    remove_column :sbr_submissions, :sbr_reason_id
    remove_column :sbr_submissions, :service_in_dispute
  end

  def down
    add_column :sbr_submissions, :sbr_reason_id, :integer, index: true, foreign_key: true
    add_column :sbr_submissions, :service_in_dispute, :string
  end
end
