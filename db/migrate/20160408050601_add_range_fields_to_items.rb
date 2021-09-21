class AddRangeFieldsToItems < ActiveRecord::Migration
  def change
    add_column :items, :page_count_min, :integer
    add_column :items, :page_count_max, :integer
  end
end
