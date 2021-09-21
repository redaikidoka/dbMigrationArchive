class AddSourceFieldsToRequests < ActiveRecord::Migration[5.2]
  def change
    add_column :requests, :source, :string
    add_column :requests, :appearance_for, :string
    add_column :requests, :appearance_date, :date
    add_column :requests, :appearance_time, :string
    add_column :requests, :imr_ur_denial_on, :date
    add_column :requests, :imr_filing_date, :date
    add_column :requests, :imr_treatment_type, :string
    add_column :requests, :created_by_id, :integer
    add_column :requests, :custom_subpoena_phrase, :string
    add_column :requests, :billing_party_override, :boolean, default: false
    add_column :requests, :wcab_case_file_number, :string
    add_column :requests, :documents_to_be_served, :string
  end
end
