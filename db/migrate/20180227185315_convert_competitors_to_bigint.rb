class ConvertCompetitorsToBigint < ActiveRecord::Migration[5.1]
  def up
    change_column :competitors, :id, :bigint
  end
end
