class RemoveNewAttachmentFromCases < ActiveRecord::Migration[5.1]
  def self.up
    remove_column :cases, :new_attachment
  end

  def self.down
    add_column :cases, :new_attachment, :boolean, default: false
  end
end
