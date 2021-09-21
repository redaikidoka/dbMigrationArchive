class AddSubjectToSecureShare < ActiveRecord::Migration[5.0]
  def change
    add_column :secure_shares, :subject, :string
  end
end
