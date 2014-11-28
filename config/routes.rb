Rails.application.routes.draw do
  get "/admin" => "gem_admin_test/admin#dashboard"
  
  get     '/admin/*url' => "gem_admin_test/admin#index"
  post    '/admin/*url' => "gem_admin_test/admin#index"
  patch   '/admin/*url' => "gem_admin_test/admin#index"
  delete  '/admin/*url' => "gem_admin_test/admin#index"
  
end