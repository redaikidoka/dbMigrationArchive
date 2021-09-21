class AddCommunicationTemplateType <  ActiveRecord::Migration[5.0]
  def change
    add_column :communication_templates, :template_type, :string
    add_index :communication_templates, :template_type
  end
end
