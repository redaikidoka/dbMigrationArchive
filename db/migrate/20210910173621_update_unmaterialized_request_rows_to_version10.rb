class UpdateUnmaterializedRequestRowsToVersion10 < ActiveRecord::Migration[5.2]
  def change
    update_view :unmaterialized_request_rows, version: 10, revert_to_version: 9
  end
end
