class AddPgSearchDmetaphoneSupportFunctions < ActiveRecord::Migration
  def self.up
    execute <<-SQL
      CREATE OR REPLACE FUNCTION pg_search_dmetaphone(text) RETURNS text LANGUAGE SQL IMMUTABLE STRICT AS $function$
        SELECT array_to_string(ARRAY(SELECT dmetaphone(unnest(regexp_split_to_array($1, E'\\s+')))), ' ')
      $function$;
    SQL
  end

  def self.down
    execute <<-SQL
      DROP FUNCTION IF EXISTS pg_search_dmetaphone(text);
    SQL
  end
end

