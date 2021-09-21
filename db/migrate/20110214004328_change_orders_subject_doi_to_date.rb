class ChangeOrdersSubjectDoiToDate < ActiveRecord::Migration
  def up
    change_column :orders, :subject_doi, :date
  end

  def down
    change_column :orders, :subject_doi, :string
  end
end
