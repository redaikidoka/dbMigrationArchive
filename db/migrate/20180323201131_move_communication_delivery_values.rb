class MoveCommunicationDeliveryValues < ActiveRecord::Migration[5.1]
  def self.up
    say_with_time "moving delivery values to specific fields" do
      CommunicationDelivery.where.not(value: nil).find_each do |cd|
        if cd.delivery_type == "email"
          cd.update_column(:email, cd.value)
        elsif cd.delivery_type == "fax"
          cd.update_column(:fax, cd.value)
        end
      end

      remove_column :communication_deliveries, :value
    end
  end

  def self.down
    say_with_time "moving specific delivery fields to values" do
      add_column :communication_deliveries, :value, :string

      CommunicationDelivery.where.not(email: nil).find_each do |cd|
        cd.update_column(:value, cd.email)
      end

      CommunicationDelivery.where.not(fax: nil).find_each do |cd|
        cd.update_column(:value, cd.fax)
      end
    end
  end
end
