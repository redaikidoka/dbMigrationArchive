class CreateLineItemCredits < ActiveRecord::Migration[5.2]
  def change
    create_table :line_item_credits do |t|
      t.references :user, index: true, null: false
      t.references :invoice, index: true, null: false
      t.string :code, null: false
      t.date :transaction_date, null: false
      t.string :reason
      t.integer :qty, null: false
      t.integer :total_cents, null: false
      t.integer :price_cents
      t.timestamps
    end
  end
end
