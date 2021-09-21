class RemoveMktgModels < ActiveRecord::Migration
  def self.up
    drop_table :leads
    drop_table :materials
    drop_table :pages
  end
end
