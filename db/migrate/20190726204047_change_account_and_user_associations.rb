class ChangeAccountAndUserAssociations < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :account, index: true
    add_column :users, :admin, :boolean, default: false
    add_column :users, :acl, :jsonb, default: {}

    execute <<-SQL
      UPDATE users
      SET account_id = accesses.accessible_id,
          acl = accesses.acl
      FROM
        accesses
      WHERE
        accesses.user_id = users.id
    SQL

    User.where(account_id: 0).update_all(admin: true, account_id: nil)
  end
end
