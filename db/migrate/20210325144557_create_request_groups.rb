class CreateRequestGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :request_groups do |t|
      t.integer :request_ids, array: true, default: []
      
      t.timestamps
    end

    add_index :request_groups, :request_ids
  end
end
