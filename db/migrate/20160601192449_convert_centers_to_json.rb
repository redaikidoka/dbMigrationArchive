class ConvertCentersToJson < ActiveRecord::Migration
  def change
    ## NOTE TEMPLATES
    rename_column :note_templates, :centers, :centers_hstore
    add_column :note_templates, :centers, :jsonb, null: false, default: "{}"

    NoteTemplate.find_each do |nt|
      centers = nt.centers_hstore
      centers.each_key { |key| centers[key] = (centers[key] == "1" ? 1 : 0) }
      nt.update_column(:centers, centers)
    end

    remove_column :note_templates, :centers_hstore
    add_index :note_templates, :centers, using: :gin

    ## EVENT CODES
    rename_column :event_codes, :centers, :centers_hstore
    add_column :event_codes, :centers, :jsonb, null: false, default: "{}"

    EventCode.find_each do |ec|
      centers = ec.centers_hstore
      centers.each_key { |key| centers[key] = (centers[key] == "1" ? 1 : 0) }
      ec.update_column(:centers, centers)
    end

    remove_column :event_codes, :centers_hstore
    add_index :event_codes, :centers, using: :gin
  end
end
