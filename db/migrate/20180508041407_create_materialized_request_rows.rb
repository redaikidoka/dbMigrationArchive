class CreateMaterializedRequestRows < ActiveRecord::Migration[5.1]
  def change
    create_table :materialized_request_rows do |t|
      # primary key will use request.id

      t.bigint :work_order_id
      t.text :request_masked_state
      t.text :applicant_name
      t.text :defendant
      t.boolean :rush, default: false
      t.datetime :received_on
      t.bigint :account_id
      t.text :order_state
      t.text :case_number
      t.text :case_status
      t.text :requested_contact_name
      t.text :requested_company_name
      t.text :requested_street
      t.text :requested_city
      t.text :requested_state
      t.text :requested_zip
      t.text :verified_contact_name
      t.text :verified_company_name
      t.text :verified_street
      t.text :verified_city
      t.text :verified_state
      t.text :verified_zip
    end
  end
end
