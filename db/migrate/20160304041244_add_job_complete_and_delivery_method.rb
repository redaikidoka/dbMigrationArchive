class AddJobCompleteAndDeliveryMethod < ActiveRecord::Migration
  def change
    add_column :das_buffers, :job_complete, :boolean, default: false
    add_column :das_buffers, :delivery_method, :string

    add_column :imported_orders, :job_complete, :boolean, default: false
    add_column :imported_orders, :delivery_method, :string
  end
end
