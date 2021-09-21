class CreatePayments < ActiveRecord::Migration[5.2]
  def change
    create_table :payments do |t|
      t.references :user, index: true, null: false
      t.string :ref_number, null: false
      t.integer :amount_cents, null: false, default: 0
      t.text :note
      t.date :date_received
      t.boolean :writedown_only, default: false
      
      t.timestamps
    end

    add_index :payments, :ref_number
  end
end
