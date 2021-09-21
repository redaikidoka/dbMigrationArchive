class AddImportedAtToParties < ActiveRecord::Migration
  def change
    add_column :parties, :imported_at, :datetime
  end
end
