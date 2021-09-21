class CreateRequestNotes < ActiveRecord::Migration
  def change
    create_table :request_notes do |t|
      t.integer :id
      t.integer :request_id
      t.integer :user_id
      t.text :note

      t.timestamps
    end
  end
end
