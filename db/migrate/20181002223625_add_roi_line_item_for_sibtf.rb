class AddRoiLineItemForSibtf < ActiveRecord::Migration[5.2]
  def up
    fee_schedule = PriceList.fee_schedule

    fee_schedule.items.create!(
      code: "CC101",
      identifier: "FS-CC101-custodian-charges",
      description: "Custodian Charges - At Cost",
      summary: "Custodian Charges - At Cost",
      price_cents: 0,
      taxable: false,
      discountable: false,
      rate_editable: true
    )
  end

  def down
    fee_schedule = PriceList.fee_schedule
    item = fee_schedule.items.find_by(code: "CC101")
    item.destroy
  end
end
