class AddSecureNotesToIssueComments < ActiveRecord::Migration
  def change
    add_column :comments, :encrypted_secure_notes, :text, after: "body"
  end
end
