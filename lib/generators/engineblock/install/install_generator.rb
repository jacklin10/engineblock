require 'rails/generators/migration'

module Engineblock
  module Generators
    class InstallGenerator < ::Rails::Generators::Base
      include Rails::Generators::Migration

      # sneaky - class method not assignment.  Your brain may insert an = in there so pay attention
      source_root File.expand_path('../../templates', __FILE__)

      desc "add the migrations"
      def self.next_migration_number(path)
        unless @prev_migration_nr
          @prev_migration_nr = Time.now.utc.strftime("%Y%m%d%H%M%S").to_i
        else
          @prev_migration_nr += 1
        end
        @prev_migration_nr.to_s
      end

      def copy_migrations
        puts "creating migrations..."
        migration_template "create_pistons.rb", "db/migrate/create_pistons.rb"
      end

      desc "Creates a Engineblock initializer and copy locale files to your application."
      def copy_initializer
        puts "creating initializer..."
        template "engineblock.rb", "config/initializers/engineblock.rb"
      end

    end
  end
end
