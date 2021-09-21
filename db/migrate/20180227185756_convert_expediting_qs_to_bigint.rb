class ConvertExpeditingQsToBigint < ActiveRecord::Migration[5.1]
  def up
    change_column :expediting_qs, :id, :bigint
    change_column :expediting_qs, :master_id, :bigint
    change_column :expediting_qs, :processed_by_id, :bigint
  end
end
