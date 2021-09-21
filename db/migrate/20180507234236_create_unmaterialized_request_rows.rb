class CreateUnmaterializedRequestRows < ActiveRecord::Migration[5.1]
  def change
    create_view :unmaterialized_request_rows
  end
end
