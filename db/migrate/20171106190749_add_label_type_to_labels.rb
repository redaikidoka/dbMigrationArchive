class AddLabelTypeToLabels < ActiveRecord::Migration[5.1]
  def change
    add_column :labels, :label_type, :text, default: "action"
  end
end
