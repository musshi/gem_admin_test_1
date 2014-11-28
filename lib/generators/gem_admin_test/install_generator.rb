require 'rails/generators/base'
require 'securerandom'

module GemAdminTest
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../../templates", __FILE__)

      desc "Creates a AntsAdmin initializer and copy locale files to your application."
      class_option :orm

      def copy_initializer
        # template "ants_admin.rb", "config/initializers/ants_admin.rb"
      end
      
      def copy_view
        template "dashboard.html.erb", "app/views/gem_admin_test/dashboard.html.erb"
        
      end
      
      def copy_menu_config_file
        template "config.yml", "config/config.yml"
      end

      def inject_javascript
        append_to_file 'app/assets/javascripts/application.js' do
          out = "\n"
          out << "//= require gem_admin_test/app"
        end
      end

      def rails_4?
        Rails::VERSION::MAJOR == 4
      end
    end
  end
end