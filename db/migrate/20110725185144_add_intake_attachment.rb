class AddIntakeAttachment < ActiveRecord::Migration
  def up
    add_column :intakes, :intake_attachment, :string
  end

  def down
    remove_column :intakes, :intake_attachment
  end
end
