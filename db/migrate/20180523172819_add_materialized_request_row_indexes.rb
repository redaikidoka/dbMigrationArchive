class AddMaterializedRequestRowIndexes < ActiveRecord::Migration[5.1]
  def change
    add_index :materialized_request_rows, :id
    add_index :materialized_request_rows, :work_order_id
    add_index :materialized_request_rows, :request_masked_state
    add_index :materialized_request_rows, :applicant_name
    add_index :materialized_request_rows, :defendant
    add_index :materialized_request_rows, :rush
    add_index :materialized_request_rows, :received_on
    add_index :materialized_request_rows, :account_id
    add_index :materialized_request_rows, :order_state
    add_index :materialized_request_rows, :case_number
    add_index :materialized_request_rows, :case_status
  end
end
