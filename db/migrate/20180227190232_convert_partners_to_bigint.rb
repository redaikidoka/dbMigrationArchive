class ConvertPartnersToBigint < ActiveRecord::Migration[5.1]
  def up
    change_column :partners, :id, :bigint
  end
end
