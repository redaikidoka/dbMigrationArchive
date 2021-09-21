class RenameUserToStaffAclForUsers < ActiveRecord::Migration[5.2]
  def change
    Rake::Task["single_purpose:rename_users_acl_to_staff"].invoke
  end
end
