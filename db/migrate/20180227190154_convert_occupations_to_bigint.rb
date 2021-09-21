class ConvertOccupationsToBigint < ActiveRecord::Migration[5.1]
  def up
    change_column :occupations, :id, :bigint
  end
end
