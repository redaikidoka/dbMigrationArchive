class CreateSnapraterRequests < ActiveRecord::Migration
  def change
    create_table :snaprater_requests do |t|
      t.boolean  :ama_rating
      t.boolean  :old_schedule
      t.boolean  :processed
      t.date     :dob
      t.date     :doi
      t.datetime :completed_at
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :account_id
      t.integer  :folder_id
      t.integer  :transaction_id
      t.integer  :user_id
      t.string   :adjuster
      t.string   :adjuster_email
      t.string   :adjuster_phone
      t.string   :applicant_name
      t.string   :claim_number
      t.string   :claimant_name
      t.string   :defendant
      t.string   :fax
      t.string   :occupation
      t.text     :comments
    end

    add_index :snaprater_requests, :account_id
  end
end
