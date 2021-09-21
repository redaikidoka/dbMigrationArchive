class AddXrayRecordsToRequestDocument < ActiveRecord::Migration[5.2]
  def change
    add_column :request_documents, :records_physical_films, :string
    add_column :request_documents, :records_digital_films, :string
  end
end
