class AddUniqueIndexOnLabeledObjects < ActiveRecord::Migration[5.1]
  def change
    add_index :labeled_objects, [:label_id, :labelable_id, :labelable_type],
      unique: true, name: "index_unique_label_to_labelable_object"
  end
end
