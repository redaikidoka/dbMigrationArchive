class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :item_type
      t.string :item_id
      t.integer :user_id
      t.string :event_type
      t.string :state

      t.timestamps
    end

    add_index :events, [:item_type, :item_id]
  end
end
