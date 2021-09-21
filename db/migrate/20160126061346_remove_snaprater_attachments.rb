class RemoveSnapraterAttachments < ActiveRecord::Migration
  def self.up
    drop_table :snaprater_attachments
  end
end
