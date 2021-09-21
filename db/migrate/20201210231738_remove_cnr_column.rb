class RemoveCnrColumn < ActiveRecord::Migration[5.2]
  def change
    remove_column :request_documents, :cnr_at
  end
end
