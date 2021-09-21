class AddCommunicationTemplateLegalType < ActiveRecord::Migration[5.1]
  def change
    add_column :communication_templates, :include_case_info, :boolean, default: true
    CommunicationTemplate.update_all(include_case_info: true)
  end
end
