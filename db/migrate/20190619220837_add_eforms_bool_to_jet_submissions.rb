class AddEformsBoolToJetSubmissions < ActiveRecord::Migration[5.2]
  def change
    add_column :jet_submissions, :eform, :boolean, default: false
  end
end
