class AddAgentIdAndBooleanToEntities < ActiveRecord::Migration
  def change
    add_column :entities, :agent_id, :integer, after: "id"
    add_column :entities, :is_agent, :boolean, default: false, after: "entity_type"
    add_index :entities, :agent_id
  end
end
