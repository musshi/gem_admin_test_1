class GemAdminTest::AdminController < GemAdminTestController
  def dashboard
  end
  
  def index_each_model
    p params
    url = params[:url]
    begin
      url_s = url.split("/")
      @model_string = url_s[0].singularize
      begin
        @model_class = @model_string.classify.constantize
      rescue
        raise ActionController::RoutingError.new("Can not find model  #{@model_string.classify}")
      end
      
      # p @model_string
      # p @model_class
      if url_s.count == 1
        p "1"
        return index if request.get?
        return create if request.post?
      else
        
      end
    rescue => e
      raise e 
    end 
  end
  
  def index
    params[:action] = "index"
    render template: "/gem_admin_test/index/index"
  end
  
  def create
    params[:action] = "create"
    render template: "/gem_admin_test/form/create"
  end

end