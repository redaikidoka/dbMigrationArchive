class AddPolyShareableToSecureShares < ActiveRecord::Migration[5.2]
  def change
    add_reference :secure_shares, :shareable, polymorphic: true, index: true
  end
end
