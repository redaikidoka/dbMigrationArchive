class AddDocumentClassificatioToJetSubmissions < ActiveRecord::Migration[5.2]
  def change
    add_column :jet_submissions, :document_classification, :text
  end
end
