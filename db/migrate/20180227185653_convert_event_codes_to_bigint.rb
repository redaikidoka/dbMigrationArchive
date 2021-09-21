class ConvertEventCodesToBigint < ActiveRecord::Migration[5.1]
  def up
    change_column :event_codes, :id, :bigint
    change_column :event_codes, :event_category_id, :bigint
  end
end
