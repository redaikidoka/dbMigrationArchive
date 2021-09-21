class CreateNoteTemplates < ActiveRecord::Migration
  def up
    create_table :note_templates do |t|
      t.string :issue_type
      t.text :note
      t.integer :order_level, default: 0
      t.integer :request_level, default: 0
      t.hstore  :centers

      t.timestamps
    end

    add_index :note_templates, :issue_type
    add_index :note_templates, :order_level
    add_index :note_templates, :request_level
    execute "CREATE INDEX note_templates_gin_centers ON note_templates USING GIN(centers)"
  end

  def down
    remove_index :note_templates, :issue_type
    execute "DROP INDEX note_templates_gin_centers"
    drop_table :note_templates
  end
end
