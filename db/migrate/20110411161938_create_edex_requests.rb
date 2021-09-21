class CreateEdexRequests < ActiveRecord::Migration
  def change
    create_table :edex_requests do |t|
      t.boolean  :case_watch
      t.boolean  :cleared
      t.datetime :posted_on
      t.datetime :requested_on
      t.integer  :account_id
      t.integer  :posted_by
      t.integer  :user_id
      t.string   :email
      t.string   :wcab_number
      t.string   :worker_name
      t.string   :worker_ssn
      t.text     :results

      t.timestamps
    end

  end
end
