class RebuildEdexRequestsAttributes < ActiveRecord::Migration
  def up
    drop_table :edex_requests

    create_table :edex_requests do |t|
      t.integer  :account_id
      t.integer  :user_id
      t.integer  :processed_by_id
      t.string   :applicant_name
      t.string   :encrypted_applicant_ssn
      t.string   :wcab_number
      t.boolean  :completed

      t.timestamps
    end
  end

  def down
    drop_table :edex_requests

    create_table :edex_requests do |t|
      t.boolean  :case_watch
      t.boolean  :cleared
      t.datetime :posted_on
      t.datetime :requested_on
      t.integer  :account_id
      t.integer  :processed_by_id
      t.integer  :user_id
      t.string   :email
      t.string   :wcab_number
      t.string   :worker_name
      t.string   :encrypted_worker_ssn
      t.text     :results

      t.timestamps
    end
  end
end
