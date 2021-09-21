class RemoveCaseAttachments < ActiveRecord::Migration[5.2]
  def change
    rename_table :case_attachments, :dead_case_attachments
  end
end
