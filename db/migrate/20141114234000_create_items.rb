class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.binary :uuid, limit: 16
      t.integer :price_list_id
      t.string :name
      t.integer :price_cents

      t.timestamps
    end

    add_index :items, :price_list_id
  end
end
