class AddSubmittingAtToJetSubmissions < ActiveRecord::Migration[5.2]
  def change
    add_column :jet_submissions, :submitting_at, :datetime
  end
end
