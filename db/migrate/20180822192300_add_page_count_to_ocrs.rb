class AddPageCountToOcrs < ActiveRecord::Migration[5.2]
  def change
    add_column :ocrs, :page_count, :integer
  end
end
