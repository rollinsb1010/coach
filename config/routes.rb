Coach::Application.routes.draw do




  # devise_for :users, path_names: {sign_in: "login", sign_out: "logout"}, controllers: {omniauth_callbacks: "omniauth_callbacks"}
  
  # devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

 
  
  SitesController.action_methods.each do |action|
    get "/#{action}", to: "sites##{action}", as: "#{action}_site"
  end
  
  resources :sites, :except => [:index, :show]
  resources :messages, :except => [:create, :new]
  resources :sessions
  
  #For Pure Omniauth Solution w/o Devise
  # get '/login', :to => 'messages#new', :as => :login
  # match '/auth/:provider/callback', :to => 'messages#create'
  # match '/auth/failure', :to => 'messages#failure' 
  # get '/logout', :to => 'messages#destroy'
  
  # get "/portfolio", to: "sites#portfolio", as: :portfolio_page
  # get "/contact", to: "sites#contact", as: :contact_page
  
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  
  # match '/auth/:provider/callback', to: 'sessions#create' #omniauth route
  # match 'auth/failure', to: 'sessions#failure'
  # match '/logout', to: 'sessions#destroy', :as => 'logout'

  resources :users
  
  root :to => 'sites#about'
end  


  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.


  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'

