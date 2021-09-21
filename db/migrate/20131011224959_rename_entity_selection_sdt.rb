class RenameEntitySelectionSdt < ActiveRecord::Migration
  def change
    remove_index :entity_selections, :sdt_address_id
    rename_column :entity_selections, :sdt_address_id, :service_of_process_address_id
    add_index :entity_selections, :service_of_process_address_id

    Entity.find_each(batch_size: 10) do |e|
      e.entity_types = e.entity_types.map(&:to_s)
      e.set_default_address_types
      e.save
    end

    Event.where(item_type: "EntityAddress").delete_all
  end
end
