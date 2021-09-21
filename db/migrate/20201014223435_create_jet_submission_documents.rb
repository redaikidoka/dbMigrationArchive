class CreateJetSubmissionDocuments < ActiveRecord::Migration[5.2]
  def change
    create_table :jet_submission_documents do |t|
      t.references :jet_submission, index: true, null: false
      t.string :document_author
      t.string :document_category
      t.string :document_type
      t.string :document_filename
      t.string :form_type
      t.date :document_date
      t.timestamps
    end
  end
end
