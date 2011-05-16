ActionController::Routing::Routes.draw do |map|
  # The priority is based upon order of creation: first created -> highest priority.

  # Sample of regular route:
  #   map.connect 'products/:id', :controller => 'catalog', :action => 'view'
  # Keep in mind you can assign values other than :controller and :action
map.connect 'SoilData/', :controller => 'pedon'
map.connect 'SoilData/Help', :controller => 'pedon', :action => 'Help'
map.connect 'SoilData/Rest', :controller => 'pedon', :action => 'Rest'
map.connect 'SoilData/Owner', :controller => 'pedon', :action => 'Owner'
map.connect 'SoilData/Collections', :controller => 'pedon', :action => 'Collections'
map.connect 'SoilData/Collection/:collection', :controller => 'pedon', :action => 'Collection'
map.connect 'SoilData/Collection/:collection/Purpose', :controller => 'pedon', :action => 'Purpose'
map.connect 'SoilData/Collection/:collection/Properties', :controller => 'pedon', :action => 'Properties'
map.connect 'SoilData/Collection/:collection/Property/*property', :controller => 'pedon', :action => 'Property'
map.connect 'SoilData/Collection/:collection/Soils', :controller => 'pedon', :action => 'Soils'
map.connect 'SoilData/Collection/:collection/Soil/*soil', :controller => 'pedon', :action => 'Soil'

  # Sample of named route:
  #   map.purchase 'products/:id/purchase', :controller => 'catalog', :action => 'purchase'
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   map.resources :products

  # Sample resource route with options:
  #   map.resources :products, :member => { :short => :get, :toggle => :post }, :collection => { :sold => :get }

  # Sample resource route with sub-resources:
  #   map.resources :products, :has_many => [ :comments, :sales ], :has_one => :seller
  
  # Sample resource route with more complex sub-resources
  #   map.resources :products do |products|
  #     products.resources :comments
  #     products.resources :sales, :collection => { :recent => :get }
  #   end

  # Sample resource route within a namespace:
  #   map.namespace :admin do |admin|
  #     # Directs /admin/products/* to Admin::ProductsController (app/controllers/admin/products_controller.rb)
  #     admin.resources :products
  #   end

  # You can have the root of your site routed with map.root -- just remember to delete public/index.html.
  # map.root :controller => "welcome"
#	map.root :controller => "default", :action => "index"

  # See how all your routes lay out with "rake routes"

  # Install the default routes as the lowest priority.
  # Note: These default routes make all actions in every controller accessible via GET requests. You should
  # consider removing the them or commenting them out if you're using named routes and resources.
	map.connect ':controller/:action',  :controller => 'pedon'
	map.connect ':action',  :controller => 'pedon'
end
