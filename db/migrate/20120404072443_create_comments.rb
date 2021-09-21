class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :issue_id
      t.integer :user_id
      t.string :event
      t.text :body

      t.timestamps
    end

    add_index :comments, :issue_id
    add_index :comments, :user_id
  end
end
