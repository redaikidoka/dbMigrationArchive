class SetHstoreDefaults < ActiveRecord::Migration
  def change
    change_column :event_codes, :centers, :hstore, default: "", null: false
    change_column :events, :data, :hstore, default: "", null: false
    change_column :expediting_qs, :data, :hstore, default: "", null: false
    change_column :note_templates, :centers, :hstore, default: "", null: false
  end
end
