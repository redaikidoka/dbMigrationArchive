class UpdateUnmaterializedRequestRowsToVersion4 < ActiveRecord::Migration[5.2]
  def change
    update_view :unmaterialized_request_rows, version: 4, revert_to_version: 3
  end
end
