class AddRequestParties < ActiveRecord::Migration[5.2]
  def change
    create_join_table :parties, :requests, table_name: :request_parties
  end
end
