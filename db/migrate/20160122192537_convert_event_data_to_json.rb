class ConvertEventDataToJson < ActiveRecord::Migration
  def change
    rename_column :events, :data, :data_hstore
    add_column :events, :data, :jsonb, null: false, default: "{}"

    Event.find_each do |e|
      e.update_column(:data, e.data_hstore)
    end

    remove_column :events, :data_hstore
  end
end
