class GiveContactsAccessToAccounts < ActiveRecord::Migration
  def up
    Contact.all.each { |c| User.find(c.person_id).grant_access_to(Account.find(c.account_id), :member) }
  end

  def down
    Contact.all.each { |c| User.find(c.person_id).revoke_access_to(Account.find(c.account_id), :member) }
  end
end
