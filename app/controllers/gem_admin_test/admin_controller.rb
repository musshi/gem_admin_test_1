class GemAdminTest::AdminController < GemAdminTestController
  def dashboard
  end
  
  def index
    model_string = params[:url].split("/")[0]
    # items => item
    
    # libraies -> library
    
  end

end