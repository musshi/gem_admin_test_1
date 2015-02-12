class GemAdminTest::AdminController < GemAdminTestController
  
  def dashboard
  end
  
  def index_each_model
    url = params[:url]
    begin
      url_s = url.split("/")
      @model_string = url_s[0].singularize
      begin
        @model_class = @model_string.classify.constantize
      rescue
        raise ActionController::RoutingError.new("Can not find model  #{@model_string.classify}")
      end
      if url_s.count == 1 # in this case http://localhost:3000/admin/products
        return index if request.get?
        return create if request.post?
      elsif url_s.count == 2 #in this case http://localhost:3000/admin/products/new
        respond_to do |format|
          format.json {
            return json if request.get? and url_s[1] == 'all'
          }
          format.html {
            return new if request.get? and url_s[1] == 'new'
            return update(url_s[1]) if request.patch?
            return delete(url_s[1]) if request.delete?
            return add if request.get? and url_s[1] == 'add'
          }
        end
      elsif url_s.count == 3 #in this case http://localhost:3000/admin
      end
    end
  end
  
  def index
    params[:action] = "index"   
    render template: "/gem_admin_test/index/index"
  end
  
  def create
    params[:action] = "create"
    
  end
  
  def new
    params[:action] = "new"
    @object = @model_class.new
    render template: "/gem_admin_test/form/new"
  end
  
  def update
    
  end
  
  def delete
    
  end
  
  def add
    
  end

end