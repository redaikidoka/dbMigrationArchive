class ConvertCommunicationItemsToBigint < ActiveRecord::Migration[5.1]
  def up
    change_column :communication_items, :id, :bigint
    change_column :communication_items, :communication_id, :bigint
  end
end
