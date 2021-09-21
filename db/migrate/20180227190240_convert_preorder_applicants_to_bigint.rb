class ConvertPreorderApplicantsToBigint < ActiveRecord::Migration[5.1]
  def up
    change_column :preorder_applicants, :id, :bigint
    change_column :preorder_applicants, :preorder_id, :bigint
  end
end
