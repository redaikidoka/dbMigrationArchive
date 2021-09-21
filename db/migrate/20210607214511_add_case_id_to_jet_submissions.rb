class AddCaseIdToJetSubmissions < ActiveRecord::Migration[5.2]
  def change
    add_column :jet_submissions, :case_id, :integer, index: true
  end
end
