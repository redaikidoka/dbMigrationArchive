class ConvertSbrReasonsToBigint < ActiveRecord::Migration[5.1]
  def up
    change_column :sbr_reasons, :id, :bigint
  end
end
