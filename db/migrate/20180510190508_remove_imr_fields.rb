class RemoveImrFields < ActiveRecord::Migration[5.1]
  def change
    remove_column :orders, :imr_app_on
    remove_column :orders, :imr_app_unsubmitted
    remove_column :orders, :imr_noa_on
    remove_column :orders, :imr_noa_unsubmitted
    remove_column :orders, :imr_deadline_option
  end
end
