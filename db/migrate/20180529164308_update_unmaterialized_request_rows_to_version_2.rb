class UpdateUnmaterializedRequestRowsToVersion2 < ActiveRecord::Migration[5.1]
  def change
    update_view :unmaterialized_request_rows, version: 2, revert_to_version: 1
  end
end
