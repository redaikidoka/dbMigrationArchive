class AddSecureShareBlankSubject < ActiveRecord::Migration[5.2]
  def change
    add_column :secure_shares, :blank_subject, :boolean, default: false, null: false
  end
end
