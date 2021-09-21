class AddArraySortFunction < ActiveRecord::Migration
  def up
    execute <<-SQL
      CREATE FUNCTION sort_array(unsorted_array anyarray) RETURNS anyarray AS $$
        BEGIN
          RETURN (SELECT ARRAY_AGG(val) AS sorted_array
          FROM (SELECT UNNEST(unsorted_array) AS val ORDER BY val) AS sorted_vals);
        END;
      $$ LANGUAGE plpgsql IMMUTABLE STRICT;
    SQL
  end

  def down
    execute <<-SQL
      DROP FUNCTION IF EXISTS sort_array(unsorted_array anyarray);
    SQL
  end
end
