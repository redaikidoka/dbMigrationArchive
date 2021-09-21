class CreateVouchers < ActiveRecord::Migration[5.1]
  def change
    create_table :vouchers do |t|
      t.bigint :account_id
      t.bigint :case_id
      t.bigint :case_manager_id
      t.bigint :counselor_id
      t.bigint :created_by_id
      t.bigint :voucher_school_id
      t.date :next_call_on
      t.string :state

      t.timestamps
      t.datetime :draft_at
      t.datetime :pending_at
      t.datetime :processing_at
      t.datetime :completed_at
      t.datetime :cancelled_at
    end

    ActiveRecord::Base.connection.execute("ALTER SEQUENCE vouchers_id_seq START with 100000 RESTART;")

    add_index :vouchers, :account_id
    add_index :vouchers, :case_id
    add_index :vouchers, :case_manager_id
    add_index :vouchers, :counselor_id
    add_index :vouchers, :created_by_id
    add_index :vouchers, :voucher_school_id
  end
end
