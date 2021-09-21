class AddPageCountToDasBuffers < ActiveRecord::Migration
  def change
    add_column :das_buffers, :page_count, :integer
  end
end
