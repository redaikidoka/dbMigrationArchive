class BackfillLegacyWorkOrderNumbers < ActiveRecord::Migration[5.2]
  def change
    # for requests where das_number is not set, they are not associated with
    # an Imported Order, and they have a non null value in legacy_data["united_order_id"]
    # update the das_number with the united id cast to int
    Request
      .where(das_number: nil)
      .where(imported_order_id: nil)
      .where("legacy_data ->>'united_order_id' IS NOT NULL")
      .update_all("das_number = (legacy_data ->>'united_order_id')::int")
  end
end
