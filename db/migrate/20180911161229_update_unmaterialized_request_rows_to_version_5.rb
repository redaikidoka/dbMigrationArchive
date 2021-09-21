class UpdateUnmaterializedRequestRowsToVersion5 < ActiveRecord::Migration[5.2]
  def change
    update_view :unmaterialized_request_rows, version: 5, revert_to_version: 4
  end
end
