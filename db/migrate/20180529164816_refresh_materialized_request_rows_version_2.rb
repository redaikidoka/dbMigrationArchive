class RefreshMaterializedRequestRowsVersion2 < ActiveRecord::Migration[5.1]
  def up
    say_with_time "refreshing MaterializedRequestRows" do
      execute <<-SQL
        SELECT refresh_all_materialized_request_rows();
      SQL
    end
  end
end
