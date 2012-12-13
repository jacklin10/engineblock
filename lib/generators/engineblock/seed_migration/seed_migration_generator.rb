require 'rails/generators/migration'

module Engineblock
  module Generators
    class SeedMigrationGenerator < ::Rails::Generators::Base
      include Rails::Generators::Migration

      source_root File.expand_path('../../templates', __FILE__)

      # You can't just move in a seed.rb file to db so instead to get seed data in the
      # system we do it as a migration.  Its seperate from the install script though because you
      # may not want it all the time.
      desc "Adds seed data as a migration"
      def self.next_migration_number(path)
        unless @prev_migration_nr
          @prev_migration_nr = Time.now.utc.strftime("%Y%m%d%H%M%S").to_i
        else
          @prev_migration_nr += 1
        end
        @prev_migration_nr.to_s
      end

      def copy_migrations
        puts "creating engineblock_seed_migration..."
        migration_template "seed_data.rb", "db/migrate/engineblock_seed_data.rb"
      end

    end
  end
end
