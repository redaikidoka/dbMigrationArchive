class AddNewAttachmentBoolOnCases < ActiveRecord::Migration
  def change
    add_column :cases, :new_attachment, :boolean, default: false
  end
end
