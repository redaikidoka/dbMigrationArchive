class RemoveLegacyId < ActiveRecord::Migration[5.2]
  def change
    remove_column :order_attachments, :legacy_id
  end
end
