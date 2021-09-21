class CreateLabels < ActiveRecord::Migration[5.0]
  def change
    create_table :labels, id: :uuid, default: "uuid_generate_v4()" do |t|
      t.string :name, limit: 40
      t.string :short_name, limit: 20
      t.string :color

      t.timestamps
    end
  end
end
