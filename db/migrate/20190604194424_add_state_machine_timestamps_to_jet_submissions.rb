class AddStateMachineTimestampsToJetSubmissions < ActiveRecord::Migration[5.2]
  def change
    add_column :jet_submissions, :initialized_at, :datetime
    add_column :jet_submissions, :draft_at, :datetime
    add_column :jet_submissions, :pending_at, :datetime
    add_column :jet_submissions, :submitted_at, :datetime
    add_column :jet_submissions, :completed_at, :datetime
    add_column :jet_submissions, :rejected_at, :datetime
  end
end
