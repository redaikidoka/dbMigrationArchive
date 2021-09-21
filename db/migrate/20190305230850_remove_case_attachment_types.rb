class RemoveCaseAttachmentTypes < ActiveRecord::Migration[5.2]
  def change
    AttachmentType.where(parent_type: :case).destroy_all
  end
end
