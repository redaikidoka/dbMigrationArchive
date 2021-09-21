class AddSummaryAndIdentifierToItems < ActiveRecord::Migration
  def change
    add_column :items, :summary, :text
    add_column :items, :identifier, :text
    add_index :items, :identifier, unique: true
  end
end
