class AllowNullEmailForPeople < ActiveRecord::Migration
  def up
    change_column :people, :email, :string, :null => true
  end

  def down
    # Can't back this out or it will complain about the people with no e-mails
  end
end
