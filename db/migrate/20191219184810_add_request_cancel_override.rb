class AddRequestCancelOverride < ActiveRecord::Migration[5.2]
  def change
    add_column :accounts, :request_cancel_override, :boolean, null: false, default: false
  end
end
