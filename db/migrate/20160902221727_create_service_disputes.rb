class CreateServiceDisputes < ActiveRecord::Migration
  def change
    create_table :service_disputes do |t|
      t.references :sbr_submission, index: true, foreign_key: true
      t.references :sbr_reason, index: true, foreign_key: true
      t.string :service_in_dispute
      t.integer :amount_paid, null: false, default: 0

      t.timestamps null: false
    end
  end
end
