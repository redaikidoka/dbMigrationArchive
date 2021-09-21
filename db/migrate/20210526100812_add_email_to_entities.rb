class AddEmailToEntities < ActiveRecord::Migration[5.2]
  def change
    add_column :entities, :email, :string
    
    add_column :invoices, :email_pending_at, :datetime
    add_column :invoices, :email_submitted_at, :datetime
  end
end
