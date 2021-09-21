class ConvertExpeditingToJson < ActiveRecord::Migration
  def up
    rename_column :expediting_qs, :data, :data_hstore
    add_column :expediting_qs, :data, :jsonb, null: false, default: "{}"

    ExpeditingQ.find_each do |eq|
      data = eq.data_hstore
      data["requests_waiting"] = data["requests_waiting"].to_i
      eq.update_column(:data, data)
    end

    remove_column :expediting_qs, :data_hstore
    add_index :expediting_qs, :data, using: :gin
  end

  def down
    # if nested json data is added, can't flatten back to hstore
    raise ActiveRecord::IrreversibleMigration
  end
end
