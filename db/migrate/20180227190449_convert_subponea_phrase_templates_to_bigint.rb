class ConvertSubponeaPhraseTemplatesToBigint < ActiveRecord::Migration[5.1]
  def up
    change_column :subpoena_phrase_templates, :id, :bigint
  end
end
