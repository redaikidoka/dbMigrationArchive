class AddPharmcyRecordsTypeToRequestDocument < ActiveRecord::Migration[5.2]
  def change
    add_column :request_documents, :records_pharmacy, :string
  end
end
