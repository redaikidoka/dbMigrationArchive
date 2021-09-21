class CreateWcirbRequests < ActiveRecord::Migration
  def change
    create_table :wcirb_requests do |t|
      t.boolean  :cleared
      t.datetime :injured_on
      t.datetime :posted_on
      t.datetime :requested_on
      t.integer  :account_id
      t.integer  :posted_by
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
      t.string   :worker_name
      t.text     :results

      t.timestamps
    end
  end
end
