class AddTypesToEntities < ActiveRecord::Migration
  def self.up
    add_column :entities, :entity_types, :text, after: "is_agent"
    add_column :entities, :address_types, :text, after: "entity_types"

    Entity.find_each(batch_size: 50) do |entity|
      if entity.entity_type == "insurance"
        entity.entity_types = [:carrier]
      elsif entity.entity_type == "medical"
        entity.entity_types = [:medical]
      end

      entity.set_default_address_types
      entity.save
    end

    remove_column :entities, :entity_type
  end

  def self.down
    add_column :entities, :entity_type, :string, after: "name"
    remove_column :entities, :address_types
    remove_column :entities, :entity_types
  end
end
