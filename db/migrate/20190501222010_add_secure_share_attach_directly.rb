class AddSecureShareAttachDirectly < ActiveRecord::Migration[5.2]
  def change
    add_column :secure_shares, :attach_directly, :boolean, default: false, null: false
  end
end
