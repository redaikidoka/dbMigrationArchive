class AddArchivedAtToJetSubmissions < ActiveRecord::Migration[5.2]
  def change
    add_column :jet_submissions, :archived_at, :datetime
  end
end
