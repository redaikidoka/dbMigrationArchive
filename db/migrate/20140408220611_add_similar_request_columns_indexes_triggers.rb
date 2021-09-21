class AddSimilarRequestColumnsIndexesTriggers < ActiveRecord::Migration
  def up
    add_column :orders, :tsvector_name, :tsvector
    add_column :orders, :tsvector_alias, :tsvector
    add_index :requests, :order_id
    add_index :orders, :applicant_name
    add_index :orders, :applicant_alias
    add_index :orders, :applicant_dob
    add_index :orders, :case_number
    add_index :orders, :encrypted_applicant_ssn
    add_index :locations, :zip

    execute <<-SQL
      CREATE INDEX index_orders_tsvector_name ON orders USING gin(tsvector_name);
      CREATE INDEX index_orders_tsvector_alias ON orders USING gin(tsvector_alias);
    SQL

    # Updates existing rows so this new column gets calculated
    execute <<-SQL
      UPDATE orders SET tsvector_name  = (to_tsvector('english', coalesce(applicant_name, '')));
      UPDATE orders SET tsvector_alias = (to_tsvector('english', coalesce(applicant_alias, '')));
    SQL

    # Sets up triggers to update name and alias tsvectors
    execute <<-SQL
      CREATE TRIGGER order_tsvector_name_update BEFORE INSERT OR UPDATE ON orders
        FOR EACH ROW EXECUTE PROCEDURE
          tsvector_update_trigger(tsvector_name, 'pg_catalog.english', applicant_name);

      CREATE TRIGGER order_tsvector_alias_update BEFORE INSERT OR UPDATE ON orders
        FOR EACH ROW EXECUTE PROCEDURE
          tsvector_update_trigger(tsvector_alias, 'pg_catalog.english', applicant_alias);
    SQL
  end

  def down
    execute <<-SQL
      DROP TRIGGER IF EXISTS order_tsvector_name_update ON orders;
      DROP TRIGGER IF EXISTS order_tsvector_alias_update ON orders;

      DROP INDEX IF EXISTS index_orders_tsvector_name;
      DROP INDEX IF EXISTS index_orders_tsvector_alias;
    SQL

    remove_column :orders, :tsvector_name
    remove_column :orders, :tsvector_alias
    remove_index :requests, :order_id
    remove_index :orders, :applicant_name
    remove_index :orders, :applicant_alias
    remove_index :orders, :applicant_dob
    remove_index :orders, :case_number
    remove_index :orders, :encrypted_applicant_ssn
    remove_index :locations, :zip
  end
end
