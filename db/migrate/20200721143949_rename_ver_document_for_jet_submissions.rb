class RenameVerDocumentForJetSubmissions < ActiveRecord::Migration[5.2]
  def change
    rename_column :jet_submissions, :verification_10863_document_author, :verification_by_lien_claimant_document_author
    rename_column :jet_submissions, :verification_10863_document_date, :verification_by_lien_claimant_document_date
  end
end
