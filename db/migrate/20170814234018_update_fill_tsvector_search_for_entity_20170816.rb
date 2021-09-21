class UpdateFillTsvectorSearchForEntity20170816 < ActiveRecord::Migration[5.1]
  def up
    execute <<-EOS
      CREATE OR REPLACE FUNCTION fill_tsvector_search_for_entity() RETURNS trigger LANGUAGE plpgsql AS $$
        declare
          addresses record;

        begin
          IF new.archived_at is null THEN
            select string_agg(street, ' ') as streets,
              string_agg(phone, ' ') as phones,
              string_agg(fax, ' ') as faxes
            into addresses
            from entity_addresses
            where entity_id = new.id and entity_addresses.archived = 'f';

            new.tsvector_search :=
              setweight(to_tsvector('pg_catalog.english', unaccent(coalesce(new.name, ''))), 'A') ||
              setweight(to_tsvector('pg_catalog.english', unaccent(coalesce(addresses.streets, ''))), 'B') ||
              setweight(to_tsvector('pg_catalog.english', unaccent(coalesce(addresses.phones, ''))), 'B') ||
              setweight(to_tsvector('pg_catalog.english', unaccent(coalesce(addresses.faxes, ''))), 'B');
          ELSE
            new.tsvector_search = to_tsvector(null);
          END IF;

          return new;
        end
      $$;
    EOS
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
