class CreateSubpoenaPhraseTemplates < ActiveRecord::Migration
  def change
    create_table :subpoena_phrase_templates do |t|
      t.text :record_types
      t.text :text
      t.text :suggested_when

      t.timestamps
    end
  end
end
