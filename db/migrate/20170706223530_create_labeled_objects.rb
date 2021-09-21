class CreateLabeledObjects < ActiveRecord::Migration[5.1]
  def change
    create_table :labeled_objects, id: :uuid, default: "uuid_generate_v4()" do |t|
      t.references :label, type: :uuid, index: true
      t.references :labelable, polymorphic: true, index: true

      t.timestamps
    end
  end
end
