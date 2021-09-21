class AddDeuDocumentsToJetSubmissions < ActiveRecord::Migration[5.2]
  def change
    # DEU DOCS - OTHER
    add_column :jet_submissions, :deu_earnings_information_document_author, :string
    add_column :jet_submissions, :deu_earnings_information_document_date, :date
    
    add_column :jet_submissions, :deu_job_description_document_author, :string
    add_column :jet_submissions, :deu_job_description_document_date, :date
    
    add_column :jet_submissions, :deu_factual_correction_document_author, :string
    add_column :jet_submissions, :deu_factual_correction_document_date, :date

    # MEDICAL REPORTS
    add_column :jet_submissions, :deu_ame_document_author, :string
    add_column :jet_submissions, :deu_ame_document_date, :date

    add_column :jet_submissions, :deu_default_qme_document_author, :string
    add_column :jet_submissions, :deu_default_qme_document_date, :date

    add_column :jet_submissions, :deu_panel_qme_document_author, :string
    add_column :jet_submissions, :deu_panel_qme_document_date, :date

    add_column :jet_submissions, :deu_represented_qme_document_author, :string
    add_column :jet_submissions, :deu_represented_qme_document_date, :date

    add_column :jet_submissions, :deu_physician_document_author, :string
    add_column :jet_submissions, :deu_physician_document_date, :date

    # MISC
    add_column :jet_submissions, :deu_pos_document_author, :string
    add_column :jet_submissions, :deu_pos_document_date, :date

    add_column :jet_submissions, :deu_letter_document_author, :string
    add_column :jet_submissions, :deu_letter_document_date, :date
  end
end
