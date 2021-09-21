class UpdateFillTsvectorSearchForEntity < ActiveRecord::Migration
  def up
    execute <<-EOS
      CREATE OR REPLACE FUNCTION fill_tsvector_search_for_entity() RETURNS trigger LANGUAGE plpgsql AS $$
        declare
          addresses record;
          contacts record;

        begin
          IF new.archived_at is null THEN
            select street, city, phone, fax into addresses from entity_addresses where entity_id = new.id and entity_addresses.archived = 'f';
            select name into contacts from entity_contacts where entity_id = new.id and entity_contacts.deleted_at is null;

            new.tsvector_search :=
              setweight(to_tsvector(coalesce(new.name, '')), 'A') ||
              setweight(to_tsvector(coalesce(addresses.street, addresses.city, '')), 'B') ||
              setweight(to_tsvector(coalesce(addresses.phone, addresses.fax, '')), 'B') ||
              setweight(to_tsvector(coalesce(contacts.name, '')), 'C');
          ELSE
            new.tsvector_search = to_tsvector(null);
          END IF;

          return new;
        end
      $$;
    EOS

    Entity.find_each(&:touch)
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
