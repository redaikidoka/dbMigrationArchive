class AddNewAppAttachmentsToJetSubmissions < ActiveRecord::Migration[5.2]
  def change
    add_column :jet_submissions, :app_claims_death_document_author, :string
    add_column :jet_submissions, :app_claims_death_document_date, :date

    add_column :jet_submissions, :death_certificate_document_author, :string
    add_column :jet_submissions, :death_certificate_document_date, :date

    add_column :jet_submissions, :dwc_1_claim_document_author, :string
    add_column :jet_submissions, :dwc_1_claim_document_date, :date

    add_column :jet_submissions, :verification_10863_document_author, :string
    add_column :jet_submissions, :verification_10863_document_date, :date
  end
end
