class ConvertObjectionTypesToBigint < ActiveRecord::Migration[5.1]
  def up
    change_column :objection_types, :id, :bigint
  end
end
