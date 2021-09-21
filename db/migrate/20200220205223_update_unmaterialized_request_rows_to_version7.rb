class UpdateUnmaterializedRequestRowsToVersion7 < ActiveRecord::Migration[5.2]
  def change
    update_view :unmaterialized_request_rows, version: 7, revert_to_version: 6

    execute <<-SQL
      SELECT refresh_all_materialized_request_rows();
    SQL
  end
end
