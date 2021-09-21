class UpdateOrderCases < ActiveRecord::Migration[5.1]
  def change
    add_column :orders, :case_id, :integer
    add_column :orders, :related_case_numbers, :text
    add_column :orders, :case_status_reason, :text

    rename_column :orders, :case_number, :legacy_case_number

    # ~20s
    # given the multiple cases an order can currently be associated with
    # we want to just associate the first case, copying over the reason text
    Order.connection.execute <<-SQL
      UPDATE orders
      SET
        case_id = case_orders.case_id,
        case_status_reason = case_orders.reason
      FROM
        case_orders
      WHERE
        case_orders.order_id = orders.id AND
        case_orders.id = (
          SELECT
            min(id)
          FROM
            case_orders c1
          WHERE
            c1.order_id = orders.id
        );
    SQL

    # ~1s
    # Collect all the case numbers (except for the first case) in the
    # related_case_numbers column seperated by a comma
    Order.connection.execute <<-SQL
      UPDATE orders
      SET related_case_numbers = subq.numbers
      FROM (
        SELECT
          orders.id order_id,
          array_to_string(array_agg(cases.number), ',') numbers
        FROM
          orders,
          case_orders,
          cases
        WHERE
          case_orders.order_id = orders.id AND
          cases.id = case_orders.case_id AND
          cases.id != orders.case_id
        GROUP BY
          orders.id
      ) AS subq
      where
        subq.order_id = orders.id;
    SQL

    # Associate case to order for any order with a number that matches
    execute <<-SQL
      UPDATE orders SET case_id = subq.id
      FROM (
        SELECT
          id,
          number
        FROM
          cases
      ) as subq
      WHERE
        orders.legacy_case_number = subq.number;
    SQL

    add_index :orders, :case_id

  end
end
