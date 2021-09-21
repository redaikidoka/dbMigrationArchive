class AddPhotographDocumentToJetSubmissions < ActiveRecord::Migration[5.2]
  def change
    add_column :jet_submissions, :deu_photographs_document_author, :string
    add_column :jet_submissions, :deu_photographs_document_date, :date
  end
end
