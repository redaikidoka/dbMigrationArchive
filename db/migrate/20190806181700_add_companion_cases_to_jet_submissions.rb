class AddCompanionCasesToJetSubmissions < ActiveRecord::Migration[5.2]
  def change
    add_column :jet_submissions, :companion_cases, :string, array: true, default: []
  end
end
