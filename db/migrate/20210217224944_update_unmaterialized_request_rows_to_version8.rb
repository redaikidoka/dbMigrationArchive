class UpdateUnmaterializedRequestRowsToVersion8 < ActiveRecord::Migration[5.2]
  def change
    update_view :unmaterialized_request_rows, version: 8, revert_to_version: 7
  end
end
