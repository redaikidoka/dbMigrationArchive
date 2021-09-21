class ConvertVenuesToBigint < ActiveRecord::Migration[5.1]
  def up
    change_column :venues, :id, :bigint
    change_column :venues, :das_venue_id, :bigint
  end
end
