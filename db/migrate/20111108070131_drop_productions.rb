class DropProductions < ActiveRecord::Migration
  def up
    drop_table :productions
  end

  def down
    create_table :productions do |t|
      t.integer :order_id
      t.integer :request_id
      t.string :name
      t.date :served_on
      t.date :ready_on
      t.date :copied_on
      t.string :served_to

      t.timestamps
    end
  end
end
