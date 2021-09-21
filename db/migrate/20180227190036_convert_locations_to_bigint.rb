class ConvertLocationsToBigint < ActiveRecord::Migration[5.1]
  def up
    change_column :locations, :id, :bigint
    change_column :locations, :parent_id, :bigint
  end
end
