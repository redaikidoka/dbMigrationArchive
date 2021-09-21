class ChangeDraftToInactive < ActiveRecord::Migration[5.2]
  def up
    remove_column :vouchers, :draft_at, :datetime
    add_column :vouchers, :inactive_at, :datetime

    Voucher.where(state: "draft").update_all(state: "inactive", inactive_at: Time.zone.now)
  end

  def down
    add_column :vouchers, :draft_at, :datetime
    remove_column :vouchers, :inactive_at, :datetime
  end
end
