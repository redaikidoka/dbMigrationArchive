class ConvertCommunicationTemplatesToBigint < ActiveRecord::Migration[5.1]
  def up
    change_column :communication_templates, :id, :bigint
  end
end
