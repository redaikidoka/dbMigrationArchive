class AddUploadAttributesToJetSubmissions < ActiveRecord::Migration[5.2]
  def change
    add_column :jet_submissions, :declaration_document_author, :string
    add_column :jet_submissions, :declaration_document_date, :date

    add_column :jet_submissions, :fee_disclosure_document_author, :string
    add_column :jet_submissions, :fee_disclosure_document_date, :date

    add_column :jet_submissions, :venue_verification_document_author, :string
    add_column :jet_submissions, :venue_verification_document_date, :date

    add_column :jet_submissions, :medical_records_document_author, :string
    add_column :jet_submissions, :medical_records_document_date, :date

    add_column :jet_submissions, :proof_of_service_document_author, :string
    add_column :jet_submissions, :proof_of_service_document_date, :date

    add_column :jet_submissions, :verification_document_author, :string
    add_column :jet_submissions, :verification_document_date, :date

    add_column :jet_submissions, :unstructured_document_author, :string
    add_column :jet_submissions, :unstructured_document_date, :date
  end
end
