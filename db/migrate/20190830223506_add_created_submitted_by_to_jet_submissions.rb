class AddCreatedSubmittedByToJetSubmissions < ActiveRecord::Migration[5.2]
  def change
    add_column :jet_submissions, :submitted_by_id, :integer
  end
end
