class CreateRefunds < ActiveRecord::Migration[5.2]
  def change
    create_table :refunds do |t|
      t.references :user, index: true, null: false
      t.references :payment, index: true, null: false
      t.integer :amount_cents, null: false
      t.text :note

      t.timestamps
    end
  end
end
