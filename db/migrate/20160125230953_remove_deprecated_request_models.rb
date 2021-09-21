class RemoveDeprecatedRequestModels < ActiveRecord::Migration
  def self.up
    ImportedOrder.where(is_wcirb: true).delete_all

    remove_column :imported_orders, :is_wcirb

    OrderIndex.where(indexable_type: "EdexRequest").delete_all
    OrderIndex.where(indexable_type: "SnapraterRequest").delete_all
    OrderIndex.where(indexable_type: "WcirbRequest").delete_all

    PaperTrail::Version.where(item_type: "EdexRequest").delete_all
    PaperTrail::Version.where(item_type: "SnapraterRequest").delete_all
    PaperTrail::Version.where(item_type: "WcirbRequest").delete_all

    drop_table :edex_requests
    drop_table :snaprater_requests
    drop_table :wcirb_requests
  end
end
