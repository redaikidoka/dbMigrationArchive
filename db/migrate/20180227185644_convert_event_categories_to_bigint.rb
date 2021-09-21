class ConvertEventCategoriesToBigint < ActiveRecord::Migration[5.1]
  def up
    change_column :event_categories, :id, :bigint
  end
end
