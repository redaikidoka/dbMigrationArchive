class RebuildSnapraterRequests < ActiveRecord::Migration
  def up
    drop_table :snaprater_requests

    create_table :snaprater_requests do |t|
      t.integer  :user_id
      t.integer  :account_id
      t.integer  :processed_by_id

      t.string   :applicant_name
      t.string   :applicant_occupation
      t.date     :applicant_dob

      t.string   :defendant_name
      t.string   :claim_number
      t.string   :adjuster_name
      t.string   :adjuster_email
      t.string   :adjuster_phone
      t.string   :adjuster_fax
      t.boolean  :ama_rating
      t.boolean  :old_schedule

      t.boolean  :completed

      t.timestamps
    end
  end

  def down
    drop_table :snaprater_requests

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
  end
end
