class TruncateRequestNotes < ActiveRecord::Migration
  def up
    RequestNote.destroy_all
  end

  def down
  end
end
