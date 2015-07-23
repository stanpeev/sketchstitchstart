Rails.application.routes.draw do
  devise_for :companies #, :skip => [:sessions]
  # as :company do
  #   get '/companies/sign_up' => 'companies/registrations#new', :as => :new_company_registration
  #   get '/companies/edit' => 'companies/registrations#edit', :as => :edit_company_registration
  #   get '/companies/cancel' => 'companies/registrations#cancel', :as => :cancel_company_registration
  #   post '/companies' => 'companies/registrations#create', :as => :company_registration
  #   post '/companies/password' => 'companies/passwords#create', :as => :company_password
  #   get '/companies/password/new' => 'companies/passwords#new', :as => :new_company_password
  #   get '/companies/password/edit' => 'companies/passwords#edit', :as => :edit_company_password
  #   patch '/companies/password' => 'companies/passwords#update'
  #   put '/companies/password' => 'companies/passwords#update'
  # end


  devise_for :designers
  resources :designs
  resources :companies
  resources :design_steps

  root to: 'welcome#index'


  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

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
