class CreateJetFilerSettings < ActiveRecord::Migration[5.2]
  def change
    create_table :jet_filer_settings do |t|
      t.string :name
      t.string :setting_type, null: false
      t.string :service_type, null: false
      t.integer :start_hour
      t.integer :start_minutes
      t.integer :end_hour
      t.integer :end_minutes
      t.boolean :monday_enabled, default: false
      t.boolean :tuesday_enabled, default: false
      t.boolean :wednesday_enabled, default: false
      t.boolean :thursday_enabled, default: false
      t.boolean :friday_enabled, default: false
      t.boolean :saturday_enabled, default: false
      t.boolean :sunday_enabled, default: false
      t.datetime :last_error_at
      t.boolean :turned_on, default: false
      t.string :description

      t.timestamps
    end
  end
end
