class CreateDaisyAttachments < ActiveRecord::Migration
  def change
    create_table :daisy_attachments do |t|
      t.integer :daisy_id, null: false
      t.jsonb :cached_attrs
      t.timestamps null: false
    end

    add_index :daisy_attachments, :daisy_id, unique: true
  end
end
