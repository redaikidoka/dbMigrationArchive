class AddCandRSignedToJetSubmissions < ActiveRecord::Migration[5.2]
  def change
    add_column :jet_submissions, :candr_signed_document_author, :string
    add_column :jet_submissions, :candr_signed_document_date, :date
  end
end
