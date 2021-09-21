class SetMaterializedViewLabelIdsDefault < ActiveRecord::Migration[5.1]
  def up
    change_column_default :materialized_invoice_rows, :label_ids, "{}"

    execute <<-SQL
      update materialized_invoice_rows set label_ids = '{}' where label_ids is null;
    SQL
  end

  def down
    change_column_default :materialized_invoice_rows, :label_ids, nil

    execute <<-SQL
      update materialized_invoice_rows set label_ids = NULL where label_ids = '{}';
    SQL
  end
end
