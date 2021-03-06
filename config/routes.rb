Rails.application.routes.draw do
scope "/:locale", locale: /#{I18n.available_locales.join("|")}/ do
  get 'sitemap', to: 'sitemap#index'

  resources :materials, :path => "bronze-alloys",  :only => [:index] do
    resources :material_items, :path => "bronze-codes", :only => [:show]
  end
  match 'contact', to: 'contact#index', via: [:get, :post]

  get 'qc', to: 'qc#index'

  get 'about_us', to: 'about_us#index'
  post 'about_us', to: 'about_us#index'
  get 'test', to: 'home_page#test'

  resources :news, :only => [:index, :show]
  resources :categories, :only => [:index]
  resources :products, :only => [:show]
end
  resources :product_pictures, :only => []
  resources :category_pictures, :only => []
  get 'home_page/index'
  resources :product_features, :only => []
  resources :features, :only => [:show]
  resources :product_attachment_files, :only => []
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :admins
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
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
  root 'home_page#index'
  get '/:locale' => 'home_page#index'
end
