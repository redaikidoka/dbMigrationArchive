class CreatePreorderApplicants < ActiveRecord::Migration
  def change
    # 20180517 dannyb: Preorders have been removed from the system PR # 1924
    # create_table :preorder_applicants do |t|
    #   t.references :preorder, index: true, null: false
    #   t.text :name
    # end

    # add_reference :orders, :preorder_applicant, index: true

    # remove_column :orders, :preorder_id
  end
end
