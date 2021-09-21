class AddImportNeededToDasBuffers < ActiveRecord::Migration
  def change
    add_column :das_buffers, :import_needed, :boolean, default: false
  end
end
