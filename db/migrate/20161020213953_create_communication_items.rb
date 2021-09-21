class CreateCommunicationItems <  ActiveRecord::Migration[5.0]
  def change
    create_table :communication_items do |t|
      t.references :communication, index: true
      t.string :item_type
      t.text :item_id

      t.timestamps null: false
    end

    add_index :communication_items, :item_id
    add_index :communication_items, :item_type
  end
end
