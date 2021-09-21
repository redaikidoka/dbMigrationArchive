class RenameInsurerToInsured < ActiveRecord::Migration
  def up
    rename_column :parties, :insurer, :insured
  end
end
