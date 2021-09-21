class ConvertEntityContactsToBigint < ActiveRecord::Migration[5.1]
  def up
    change_column :entity_contacts, :id, :bigint
    change_column :entity_contacts, :entity_id, :bigint
    change_column :entity_contacts, :supervisor_id, :bigint
  end
end
