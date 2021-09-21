class RenameDocumentTypeForJetSubmissions < ActiveRecord::Migration[5.2]
  def change
    rename_column :jet_submissions, :verification_document_author, :verification_for_dor_document_author
    rename_column :jet_submissions, :verification_document_date, :verification_for_dor_document_date
  end
end
