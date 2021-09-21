class AddAdditionalRecordsToRequestDocument < ActiveRecord::Migration[5.2]
  def change
    add_column :request_documents, :records_psychiatric, :string
    add_column :request_documents, :records_wage, :string
    add_column :request_documents, :records_employment, :string
    add_column :request_documents, :records_claims, :string
    add_column :request_documents, :records_insurance, :string
    add_column :request_documents, :records_police_report, :string
    add_column :request_documents, :records_legal, :string
    add_column :request_documents, :records_banking, :string
    add_column :request_documents, :records_wcab_case_file, :string
    add_column :request_documents, :records_wcirb, :string
    add_column :request_documents, :records_cal_osha, :string
    add_column :request_documents, :records_edd_disability, :string
    add_column :request_documents, :records_edd_unemployment, :string
    add_column :request_documents, :records_odar, :string
    add_column :request_documents, :records_school, :string
    add_column :request_documents, :records_other, :string
  end
end
