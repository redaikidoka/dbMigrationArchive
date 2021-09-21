class AddTsvectorSearchToEntities < ActiveRecord::Migration
  def up
    add_column :entities, :tsvector_search, :tsvector

    execute <<-EOS
      CREATE INDEX index_entities_tsvector_search ON entities USING gin(tsvector_search);
    EOS

    execute <<-EOS
      CREATE OR REPLACE FUNCTION fill_tsvector_search_for_entity() RETURNS trigger LANGUAGE plpgsql AS $$
      declare
        addresses record;
        contacts record;

      begin
        select street, city, phone, fax into addresses from entity_addresses where entity_id = new.id and entity_addresses.archived = 'f';
        select name into contacts from entity_contacts where entity_id = new.id;

        new.tsvector_search :=
          setweight(to_tsvector(coalesce(new.name, '')), 'A') ||
          setweight(to_tsvector(coalesce(addresses.street, addresses.city, '')), 'B') ||
          setweight(to_tsvector(coalesce(addresses.phone, addresses.fax, '')), 'B') ||
          setweight(to_tsvector(coalesce(contacts.name, '')), 'C');

        return new;
      end
      $$;
    EOS

    execute <<-EOS
      CREATE TRIGGER entities_tsvector_search_trigger BEFORE INSERT OR UPDATE
        ON entities FOR EACH ROW EXECUTE PROCEDURE fill_tsvector_search_for_entity();
    EOS

    Entity.find_each(&:touch)
  end

  def down
    execute <<-EOS
      DROP TRIGGER entities_tsvector_search_trigger ON entities;
      DROP FUNCTION fill_tsvector_search_for_entity();
      DROP INDEX index_entities_tsvector_search;
    EOS

    remove_column :entities, :tsvector_search
  end
end
