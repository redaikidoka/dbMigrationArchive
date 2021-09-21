class CreateBillingAgreements < ActiveRecord::Migration[5.2]
  def change
    create_table :billing_agreements do |t|
      t.references :account, index: true, null: false
      t.text :agreements, null: false
      t.integer :approved_by_id, index: true
      t.integer :last_updated_by_id, index: true
      t.decimal :discount, precision: 4, scale: 2
      t.timestamps
    end
  end
end
