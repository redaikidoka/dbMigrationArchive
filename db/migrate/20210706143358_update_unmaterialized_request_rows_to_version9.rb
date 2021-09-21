class UpdateUnmaterializedRequestRowsToVersion9 < ActiveRecord::Migration[5.2]
  def change
    update_view :unmaterialized_request_rows, version: 9, revert_to_version: 8
  end
end
