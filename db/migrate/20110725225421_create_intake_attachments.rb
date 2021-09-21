class CreateIntakeAttachments < ActiveRecord::Migration
  def up
    create_table :intake_attachments do |t|
      t.integer :intake_id
      t.string :file

      t.timestamps
    end

    remove_column :intakes, :intake_attachment
  end

  def down
    add_column :intakes, :intake_attachment, :string
    drop_table :intake_attachments
  end
end
