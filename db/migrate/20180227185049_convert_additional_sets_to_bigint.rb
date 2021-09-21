class ConvertAdditionalSetsToBigint < ActiveRecord::Migration[5.1]
  def up
    change_column :additional_sets, :id, :bigint
    change_column :additional_sets, :request_id, :bigint
    change_column :additional_sets, :delivery_party_id, :bigint
    change_column :additional_sets, :processed_by_id, :bigint
    change_column :additional_sets, :submitted_by_id, :bigint
    change_column :additional_sets, :parent_id, :bigint
  end
end
