class AddSubpoenaFields < ActiveRecord::Migration
  def change
    add_column :requests, :subpoena_phrase_template_id, :integer
    add_column :requests, :subpoena_phrase, :text
    add_column :requests, :records_from_date, :date
    add_column :requests, :records_to_date, :date
  end
end
