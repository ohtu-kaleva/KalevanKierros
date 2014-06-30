Rails.application.routes.draw do
  resources :event_attributes, except: [:index]

  resources :events

  resources :users
  resources :sessions, only: [:new, :create]
  resources :enrollments, only: [:create, :index]
  resources :groups, only: [:new, :create, :show]
  resources :running_events, :controller => 'events', :type => 'RunningEvent', except: [:new, :create]
  resources :orienteering_events, :controller => 'events', :type => 'OrienteeringEvent'
  resources :skiing_events, :controller => 'events', :type => 'SkiingEvent'
  resources :skating_events, :controller => 'events', :type => 'SkatingEvent'
  resources :rowing_events, :controller => 'events', :type => 'RowingEvent'
  resources :cycling_events, :controller => 'events', :type => 'CyclingEvent'

  get 'kk_enrollments', to: 'kk_enrollments#index'
  get 'users/:id/kk_enrollments/new', to: 'kk_enrollments#new', as: 'new_kk_enrollment'
  post 'users/:id/kk_enrollments/new', to: 'kk_enrollments#create'

  root 'static_pages#home'
  get 'static_pages/home'

  get 'running_events/new', to: 'events#new_running'
  get 'new_rowing', to: 'events#new_rowing'
  get 'new_skating', to: 'events#new_skating'
  get 'new_skiing', to: 'events#new_skiing'
  get 'new_orienteering', to: 'events#new_orienteering'
  get 'new_cycling', to: 'events#new_cycling'
  post 'running_events/new', to: 'events#create_running'
  #static pages

  get 'esittely/kalevankierros', to: 'static_pages#kalevankierros'
  get 'esittely/ilmoittautuminen', to: 'static_pages#ilmoittautuminen'
  get 'esittely/pistelasku', to: 'static_pages#pistelasku'
  get 'esittely/saannot', to: 'static_pages#saannot'
  get 'esittely/hallituksen-kokoukset', to: 'static_pages#hallituksen-kokoukset'

  get 'osalajit/luistelu', to: 'static_pages#luistelu'
  get 'osalajit/hiihto', to: 'static_pages#hiihto'
  get 'osalajit/juoksu', to: 'static_pages#juoksu'
  get 'osalajit/soutu', to: 'static_pages#soutu'
  get 'osalajit/pyoraily', to: 'static_pages#pyoraily'
  get 'osalajit/suunnistus', to: 'static_pages#suunnistus'

  get 'yhteystiedot', to: 'static_pages#yhteystiedot'
  get 'yhteystiedot/palaute', to: 'static_pages#palaute'
  get 'yhteystiedot/hallitus', to: 'static_pages#hallitus'
  get 'yhteystiedot/seurat', to: 'static_pages#seurat'
  get 'yhteystiedot/linkkeja', to: 'static_pages#linkkeja'
  get 'yhteystiedot/postituslista', to: 'static_pages#postituslista'


  get 'signup', to: 'users#new'
  get 'signin', to: 'sessions#new'
  delete 'signout', to: 'sessions#destroy'
  get 'events/:event_id/event_attributes/new', to: 'event_attributes#new', as: 'add_event_attribute'
  get 'events/:event_id/enrollments/new', to: 'enrollments#new', as: 'add_enrollment'
  get 'enrollments/:enrollment_id', to: 'enrollments#show', as: 'enrollment'
  get 'groups/:group_id/add_user', to: 'users#add_user_to_group', as: 'add_user_to_group'
  post 'groups/:group_id/add_user', to: 'users#update_user_group_relation'
  get 'event_enrollments/:event_id/', to: 'enrollments#show_enrollments_for_event', as: 'show_enrollments'
  get '*path' => redirect('/')

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
