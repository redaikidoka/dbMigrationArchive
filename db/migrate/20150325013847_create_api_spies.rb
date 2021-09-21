class CreateApiSpies < ActiveRecord::Migration
  def change
    create_table :api_spies do |t|
      t.timestamps
    end

    add_column :api_spies, :request_json, :json, default: "{}"
    add_column :api_spies, :response_json, :json, default: "{}"
  end
end
