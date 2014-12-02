class GemAdminTestController < ApplicationController
  
  before_action :load_menu_gem
  include GemAdminTest::DashboardHelper
  
  def load_menu_gem
    @main_menu_admin = defined?(load_menu_project) ? load_menu_project : []
  end
  
  
end