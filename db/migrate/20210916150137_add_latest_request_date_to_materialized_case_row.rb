class AddLatestRequestDateToMaterializedCaseRow < ActiveRecord::Migration[5.2]
  def change
    add_column :materialized_case_rows, :latest_created_at, :date

    add_index :materialized_case_rows, :latest_created_at
  end
end
