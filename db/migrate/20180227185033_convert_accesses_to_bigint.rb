class ConvertAccessesToBigint < ActiveRecord::Migration[5.1]
  def up
    change_column :accesses, :accessible_id, :bigint
    change_column :accesses, :user_id, :bigint
    change_column :accesses, :id, :bigint
  end
end
