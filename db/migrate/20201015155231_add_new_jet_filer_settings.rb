class AddNewJetFilerSettings < ActiveRecord::Migration[5.2]
  def change
    add_column :jet_filer_settings, :url, :string
    add_column :jet_filer_settings, :start_time, :datetime
    add_column :jet_filer_settings, :end_time, :datetime
    add_column :jet_filer_settings, :next_run_at, :datetime
    add_column :jet_filer_settings, :error_details, :string
    add_column :jet_filer_settings, :interval, :int
  end
end
