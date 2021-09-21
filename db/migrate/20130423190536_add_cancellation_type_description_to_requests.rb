class AddCancellationTypeDescriptionToRequests < ActiveRecord::Migration
  def change
    add_column :requests, :cancellation_type_description, :text,
      after: "cancellation_type"
  end
end
