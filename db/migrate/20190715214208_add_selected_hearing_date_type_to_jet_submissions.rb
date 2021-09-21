class AddSelectedHearingDateTypeToJetSubmissions < ActiveRecord::Migration[5.2]
  def change
    add_column :jet_submissions, :selected_hearing_date_type, :string
  end
end
