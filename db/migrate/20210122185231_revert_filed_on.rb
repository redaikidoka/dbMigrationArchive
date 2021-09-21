class RevertFiledOn < ActiveRecord::Migration[5.2]
  def change
    change_column :jet_submissions, :filed_on, :date
  end
end
