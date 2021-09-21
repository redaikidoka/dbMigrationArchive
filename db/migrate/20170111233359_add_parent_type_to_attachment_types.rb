class AddParentTypeToAttachmentTypes < ActiveRecord::Migration[5.0]
  def change
    add_column :attachment_types, :parent_type, :text

    Rake::Task["single_purpose:populate_attachment_types"].invoke
  end
end
