class AddCaseDataToMaterializedInvoiceRow < ActiveRecord::Migration[5.1]
  def change
    add_column :materialized_invoice_rows, :encrypted_applicant_ssn, :string
    add_column :materialized_invoice_rows, :applicant_dob, :date
    add_column :materialized_invoice_rows, :applicant_doi_from, :date
    add_column :materialized_invoice_rows, :applicant_doi_to, :date
    add_column :materialized_invoice_rows, :defendant, :string

    add_index :materialized_invoice_rows, :encrypted_applicant_ssn
    add_index :materialized_invoice_rows, :applicant_dob
    add_index :materialized_invoice_rows, :applicant_doi_from
    add_index :materialized_invoice_rows, :applicant_doi_to
    add_index :materialized_invoice_rows, :defendant
  end
end
