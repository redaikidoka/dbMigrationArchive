class AddImrFields < ActiveRecord::Migration
  def change
    add_column :orders, :imr_ur_denial_on, :date
    add_column :orders, :imr_app_on, :date
    add_column :orders, :imr_app_unsubmitted, :boolean, default: true
    add_column :orders, :imr_noa_on, :date
    add_column :orders, :imr_noa_unsubmitted, :boolean, default: true
    add_column :orders, :imr_deadline_option, :string
  end
end
