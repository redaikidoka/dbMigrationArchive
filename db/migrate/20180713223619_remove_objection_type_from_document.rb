class RemoveObjectionTypeFromDocument < ActiveRecord::Migration[5.2]
  def change
    remove_reference :documents, :objection_type
  end
end
