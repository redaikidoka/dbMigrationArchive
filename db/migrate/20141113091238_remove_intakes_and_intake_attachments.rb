class RemoveIntakesAndIntakeAttachments < ActiveRecord::Migration
  def up
    drop_table :intakes
    drop_table :intake_attachments
  end

  def down
    # We're not going back
  end
end
