class AddNewFieldsToDasBuffer < ActiveRecord::Migration
  def change
    add_column :das_buffers, :is_received, :boolean, :default => false, :null => false
    add_column :das_buffers, :is_issued, :boolean, :default => false, :null => false
    add_column :das_buffers, :is_served, :boolean, :default => false, :null => false
    add_column :das_buffers, :is_ready, :boolean, :default => false, :null => false
    add_column :das_buffers, :is_copied, :boolean, :default => false, :null => false
    add_column :das_buffers, :is_shipped, :boolean, :default => false, :null => false
    add_column :das_buffers, :is_completed, :boolean, :default => false, :null => false
    add_column :das_buffers, :order_type, :string
    add_column :das_buffers, :is_wcab, :boolean, :default => false, :null => false
    add_column :das_buffers, :is_pi, :boolean, :default => false, :null => false
    add_column :das_buffers, :is_wcirb, :boolean, :default => false, :null => false
    add_column :das_buffers, :is_blueform, :boolean, :default => false, :null => false
    add_column :das_buffers, :is_other, :boolean, :default => false, :null => false
  end
end
