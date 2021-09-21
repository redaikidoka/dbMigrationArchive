class RsrNewFormForJetSubmissions < ActiveRecord::Migration[5.2]
  def change
    add_column :jet_submissions, :rating_requested_by, :string
    add_column :jet_submissions, :physician, :string
    add_column :jet_submissions, :exam_date, :date
    add_column :jet_submissions, :claim_number, :string
    add_column :jet_submissions, :phone_number, :string
    add_column :jet_submissions, :adjustor, :string
    add_column :jet_submissions, :employee_name_prefix, :string
    add_column :jet_submissions, :general_duties_of_job, :text
    add_column :jet_submissions, :nature_employers_business, :string

    add_column :jet_submissions, :pos_service_date, :date
    add_column :jet_submissions, :pos_employee_full_name, :string
    add_column :jet_submissions, :pos_street, :string
    add_column :jet_submissions, :pos_city, :string
    add_column :jet_submissions, :pos_state, :string
    add_column :jet_submissions, :pos_zip, :string
    add_column :jet_submissions, :pos_signature, :string    
  end
end
