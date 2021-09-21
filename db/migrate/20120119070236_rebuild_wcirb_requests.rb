class RebuildWcirbRequests < ActiveRecord::Migration
  def up
    drop_table :wcirb_requests

    create_table :wcirb_requests do |t|
      t.integer  :account_id
      t.integer  :user_id
      t.integer  :processed_by_id
      t.integer  :imported_order_id
      t.string   :das_number

      # Coverage information
      t.string   :employer_name
      t.string   :employer_street
      t.string   :employer_city
      t.string   :employer_state
      t.string   :employer_zip

      # Claim information
      t.string   :applicant_name
      t.string   :attorney_name
      t.datetime :injured_on
      t.string   :wcab_number

      t.timestamps
    end
  end

  def down
    drop_table :wcirb_requests

    create_table :wcirb_requests do |t|
      t.boolean  :cleared
      t.datetime :injured_on
      t.datetime :posted_on
      t.datetime :requested_on
      t.integer  :account_id
      t.integer  :processed_by_id
      t.integer  :user_id
      t.string   :attorney_name
      t.string   :coverage_years
      t.string   :email
      t.string   :employer_address
      t.string   :employer_city
      t.string   :employer_name
      t.string   :employer_state
      t.string   :employer_zip,     :limit => 50
      t.string   :wcab_number
      t.string   :applicant
      t.text     :results
      t.integer  :imported_order_id
      t.boolean  :das_number

      t.timestamps
    end
  end
end
