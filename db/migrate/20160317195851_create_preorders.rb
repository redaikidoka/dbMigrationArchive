class CreatePreorders < ActiveRecord::Migration
  def change
    # 20180517 dannyb: Preorders have been removed from the system PR # 1924
    # create_table :preorders do |t|
    #   t.integer :created_by_id, null: false, index: true
    #   t.integer :processed_by_id, index: true
    #   t.integer :account_id, index: true
    #   t.integer :requesting_attorney_id, index: true
    #   t.integer :user_to_contact_id, index: true
    #   t.string :state, null: false, index: true
    #   t.text :body
    #   t.timestamps
    #   t.datetime :draft_at
    #   t.datetime :pending_at
    #   t.datetime :processing_at
    #   t.datetime :accepted_at
    #   t.datetime :cancelled_at
    # end
  end
end
