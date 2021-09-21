class AddHearingDateAttributesToJetSubmissions < ActiveRecord::Migration[5.2]
  def change
    add_column :jet_submissions, :selected_hearing_date, :datetime
    add_column :jet_submissions, :selected_hearing_date_id, :string
    add_column :jet_submissions, :eform_attachments, :text
    add_column :jet_submissions, :eform_hearing_confirmation, :text
    add_column :jet_submissions, :eform_form_submit, :text
    add_column :jet_submissions, :eform_form_submit_code, :string
  end
end
