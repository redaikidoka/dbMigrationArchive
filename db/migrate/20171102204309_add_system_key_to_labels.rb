class AddSystemKeyToLabels < ActiveRecord::Migration[5.1]
  def change
    add_column :labels, :system_key, :text

    label             = Label.find_or_initialize_by(name: "No Correspondence")
    label.short_name  = "No Corr"
    label.locked      = true
    label.system_key  = Label::NO_CORRESPONDENCE
    label.color       = "000000"
    label.description = "No Correspondence after 60 days"
    label.save
  end
end
