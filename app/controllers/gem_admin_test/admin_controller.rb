class GemAdminTest::AdminController < GemAdminTestController
  def dashboard
  end
  
  def index
    @model_string = params[:url].split("/")[0]
    @model_class = @model_string.classify.constantize
    p @model_string
    p @model_class
    # items => item
    
    # libraies -> library
    
  end
  

end