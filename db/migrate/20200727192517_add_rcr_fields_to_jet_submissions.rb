class AddRcrFieldsToJetSubmissions < ActiveRecord::Migration[5.2]
  def change
    add_column :jet_submissions, :firm_requesting_rating, :string

    add_column :jet_submissions, :doctor_1_name, :string
    add_column :jet_submissions, :doctor_1_report_on, :date
    add_column :jet_submissions, :doctor_2_name, :string
    add_column :jet_submissions, :doctor_2_report_on, :date
    add_column :jet_submissions, :doctor_3_name, :string
    add_column :jet_submissions, :doctor_3_report_on, :date

    add_column :jet_submissions, :alt_case_1_injury_on, :date
    add_column :jet_submissions, :alt_case_2_injury_on, :date
    add_column :jet_submissions, :alt_case_3_injury_on, :date
    add_column :jet_submissions, :alt_case_4_injury_on, :date

    add_column :jet_submissions, :firm_served_full_name, :string
    add_column :jet_submissions, :firm_served_street, :string
    add_column :jet_submissions, :firm_served_street2, :string
    add_column :jet_submissions, :firm_served_city, :string
    add_column :jet_submissions, :firm_served_state, :string
    add_column :jet_submissions, :firm_served_zip, :string
  end
end
