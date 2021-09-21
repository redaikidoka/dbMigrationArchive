class CreatePreorderAttachments < ActiveRecord::Migration
  def change
    # 20180517 dannyb: Preorders have been removed from the system PR # 1924
    # create_table :preorder_attachments, id: :uuid, default: "uuid_generate_v4()" do |t|
    #   t.references :preorder, index: true, null: false
    #   t.references :user,     index: true, null: false
    #   t.references :upload,   index: true
    #   t.string :state
    #   t.string :import_errors
    #   t.string :file
    #   t.string :filename

    #   t.timestamps null: false
    # end
  end
end
