class ChangeFilmBreakdownRecordsInRequestDocument < ActiveRecord::Migration[5.2]
  def change
    add_column :request_documents, :records_film_breakdown_order, :string
    add_column :request_documents, :records_film_breakdown_no_order, :string
    remove_column :request_documents, :records_film_breakdown, :string
  end
end
