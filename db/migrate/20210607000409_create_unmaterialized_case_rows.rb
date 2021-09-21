class CreateUnmaterializedCaseRows < ActiveRecord::Migration[5.2]
  def change
    create_view :unmaterialized_case_rows
  end
end
