class CreateEntities < ActiveRecord::Migration
  def change
    create_table :entities do |t|
      t.string :name
      t.string :entity_type

      t.timestamps
    end

    add_index :entities, :entity_type
  end
end
