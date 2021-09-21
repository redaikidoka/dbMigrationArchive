class AddUserMilesStart < ActiveRecord::Migration
  def up
    add_column :users, :miles_start, :integer
  end

  def down
    remove_column :users, :miles_start
  end
end
