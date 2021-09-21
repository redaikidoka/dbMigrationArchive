class UpdateUnmaterializedRequestRowsToVersion6 < ActiveRecord::Migration[5.2]
  def change
    update_view :unmaterialized_request_rows, version: 6, revert_to_version: 5
  end
end
