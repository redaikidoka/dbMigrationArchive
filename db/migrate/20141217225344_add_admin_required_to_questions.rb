class AddAdminRequiredToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :admin_required, :boolean, default: false
  end
end
