Rails.application.routes.draw do
  get "/admin" => "gem_admin_test/admin#dashboard"
  
  get     '/admin/*url' => "gem_admin_test/admin#index_each_model"
  post    '/admin/*url' => "gem_admin_test/admin#index_each_model"
  patch   '/admin/*url' => "gem_admin_test/admin#index_each_model"
  delete  '/admin/*url' => "gem_admin_test/admin#index_each_model"
  
end