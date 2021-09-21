class RemoveRequestProductionNote < ActiveRecord::Migration
  def up
    remove_column :requests, :production_note
  end

  def down
    add_column :requests, :production_note, :text
  end
end
