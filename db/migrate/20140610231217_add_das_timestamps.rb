class AddDasTimestamps < ActiveRecord::Migration
  def up
    add_column :das_buffers, :last_move, :datetime
    add_column :imported_notes, :last_move, :datetime
  end

  def down
    remove_column :imported_notes, :last_move
    remove_column :das_buffers, :last_move
  end
end
