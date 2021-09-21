class AddMeruscaseUserEmailToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :meruscase_user_email, :string
  end
end
