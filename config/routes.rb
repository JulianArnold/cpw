Rails.application.routes.draw do
  get 'user_sessions/new'

  root 'store#index'
  get 'store/',               to: 'store#index',  as: :store
  get 'store/:brand',         to: 'store#brand',  as: :store_brand
  get 'store/:brand/:device', to: 'store#device', as: :store_device

  resources :brands
  resources :devices
  resources :products
  resources :users
  resources :user_sessions, only: %i(new create destroy)

  get 'sign_in',              to: 'user_sessions#new',      as: :sign_in
  get 'logout',               to: 'user_sessions#destroy',  as: :logout
  get 'account',              to: 'users#show',             as: :account
  get 'sign_up',              to: 'users#new',              as: :sign_up
  get 'change_password',      to: 'users#change_password',  as: :change_password

  get 'welcome/home'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with 'rake routes'.

  # You can have the root of your site routed with 'root'

  # Example of regular route:
  #   get 'products/:id', to: 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase', to: 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
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

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
