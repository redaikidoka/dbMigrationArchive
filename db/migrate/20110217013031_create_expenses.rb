class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.integer :account_id
      t.integer :user_id
      t.integer :miles_start
      t.integer :miles_end
      t.integer :rate
      t.text :description
      t.integer :amount

      t.timestamps
    end

  end
end
