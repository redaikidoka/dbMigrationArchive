class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.integer :order_id
      t.integer :request_id
      t.integer :user_id
      t.string :state

      t.timestamps
    end

    add_index :issues, :order_id
    add_index :issues, :request_id
    add_index :issues, :user_id
  end
end
