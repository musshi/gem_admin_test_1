class GemAdminTestController < ApplicationController
  before_action :load_menu_gem
  
  def load_menu_gem
    @menu = load_menu_project
  end
end