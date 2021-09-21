class AddEamsScrapeToggleToJetSubmissions < ActiveRecord::Migration[5.2]
  def change
    add_column :jet_submissions, :eams_case_found, :boolean, default: false
    JetSubmission.where(eams_case_found: nil).update_all(eams_case_found: false)
  end
end
