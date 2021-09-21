class CreateAccesses < ActiveRecord::Migration
  def change
    create_table :accesses do |t|
      t.integer :user_id
      t.string :accessible_type
      t.integer :accessible_id
      t.string :level

      t.timestamps
    end

  end
end
