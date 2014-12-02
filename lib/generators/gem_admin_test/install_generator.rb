require 'rails/generators/base'
require 'securerandom'

module GemAdminTest
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../../templates", __FILE__)

      desc "Creates a AntsAdmin initializer and copy locale files to your application."
      class_option :orm
      
      def copy_menu_config_file
        copy_file "config.yml", "config/config.yml"
      end
      
      
      def copy_view
        copy_file "dashboard.html.erb", "app/views/gem_admin_test/dashboard.html.erb"
      end 
      
      def insert_action_to_controller   
        inject_into_file 'app/controllers/application_controller.rb', after: "class ApplicationController < ActionController::Base\n" do <<-'RUBY'
          def load_menu_project
            [{url: "/admin/items", text: "Model 1"}, {url: "/admin/box", text: "Model 2"}, {url: "/admin/box", text: "Model 3"}]
          end
          RUBY
        end
      end
      
      # def inject_javascript
        # append_to_file 'app/assets/javascripts/application.js' do
          # out = "\n"
          # out << "//= require gem_admin_test/app"
        # end
      # end

      def rails_4?
        Rails::VERSION::MAJOR == 4
      end
    end
  end
end
