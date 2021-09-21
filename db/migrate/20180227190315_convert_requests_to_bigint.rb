class ConvertRequestsToBigint < ActiveRecord::Migration[5.1]
  def up
    change_column :requests, :id, :bigint
    change_column :requests, :order_id, :bigint
    change_column :requests, :location_id, :bigint
    change_column :requests, :cancelled_by_id, :bigint
    change_column :requests, :processed_by_id, :bigint
    change_column :requests, :imported_order_id, :bigint
    change_column :requests, :subpoena_phrase_template_id, :bigint
    change_column :requests, :parent_id, :bigint
  end
end
