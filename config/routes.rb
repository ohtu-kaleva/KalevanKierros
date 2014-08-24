Rails.application.routes.draw do
  resources :uutiset

  resources :results

  resources :event_attributes, except: [:index]

  resources :events

  resources :users
  resources :sessions, only: [:new, :create]
  resources :enrollments, only: [:create, :index]
  resources :groups, only: [:new, :create, :show]
  #resources :running_events, :controller => 'events', :type => 'RunningEvent', except: [:new, :create]
  #resources :orienteering_events, :controller => 'events', :type => 'OrienteeringEvent'
  #resources :skiing_events, :controller => 'events', :type => 'SkiingEvent'
  #resources :skating_events, :controller => 'events', :type => 'SkatingEvent'
  #resources :rowing_events, :controller => 'events', :type => 'RowingEvent'
  #resources :cycling_events, :controller => 'events', :type => 'CyclingEvent'
  get 'enrollments/:enrollment_id/edit', to: 'enrollments#edit', as: 'edit_enrollment'
  get 'results/year/:year/:gender/:age_group/:type', to: 'results#index_by_year', as: 'index_by_year'

  get 'uutiset/arkisto/:year', to: 'uutiset#archive_by_year', as: 'archive_by_year'

  get 'admin/kk_enrollment', to: 'static_pages#kk_enrollment'
  get 'kk_enrollments', to: 'kk_enrollments#index'
  post 'kk_enrollment/change', to: 'kk_enrollments#change_enrollment_status'
  get 'users/:id/kk_enrollments/new', to: 'kk_enrollments#new', as: 'new_kk_enrollment'
  post 'users/:id/kk_enrollments/new', to: 'kk_enrollments#create'

  root 'static_pages#home'
  get 'static_pages/home'
  #static pages

  get 'esittely/kalevankierros', to: 'static_pages#kalevankierros'
  get 'esittely/lajikuvaukset', to: 'static_pages#lajikuvaukset'
  get '/ilmoittautuminen', to: 'static_pages#ilmoittautuminen'
  get 'esittely/pistelasku', to: 'static_pages#pistelasku'
  get 'esittely/saannot', to: 'static_pages#saannot'
  get 'esittely/hallituksen-kokoukset', to: 'static_pages#hallituksen-kokoukset'

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
  delete 'enrollments/:enrollment_id', to: 'enrollments#destroy', as: 'delete_enrollment'
  get 'groups/:group_id/add_user', to: 'users#add_user_to_group', as: 'add_user_to_group'
  post 'groups/:group_id/add_user', to: 'users#update_user_group_relation'
  get 'event_enrollments/:event_id/', to: 'enrollments#show_enrollments_for_event', as: 'show_enrollments'
  put 'event_enrollments/', to:'enrollments#update', as: 'add_times'
  get 'event_enrollments/:event_id/single', to: 'enrollments#single'
  post 'event_enrollments/:event_id/single', to: 'enrollments#update_single'
  put 'event_enrollments/:event_id/import_csv', to: 'enrollments#import_csv', as: 'import_file'
  put 'enrollments/:enrollment_id', to: 'enrollments#delete_time', as: 'delete_time'
  post 'results/:event_id', to: 'results#calculate_points', as: 'calculate_points'
  patch 'enrollment_datas/:id', to: 'enrollment_datas#update', as: 'enrollment_datum'
  get 'results/year/:year/groups', to: 'results#with_existing_group', as: 'results_by_year_and_groups'
  get 'users/:id/activate', to: 'users#new_activation', as: 'activation'
  put 'users/:id/activate', to: 'users#activate'
  get 'statistics', to: 'statistics#index', as: 'statistics'
  get 'statistics/search', to: 'statistics#index_filterable'
  get 'statistics/static', to: 'statistics#index_static'
  get 'statistics/:id', to: 'statistics#show', as: 'statistic'
  get 'users/:id/statistic', to: 'statistics#join', as: 'join_statistic'
  put 'users/:id/statistic', to: 'statistics#join_user_to_existing_statistic'
  post 'statistics/update/:year', to: 'statistics#update_statistics', as: 'update_statistics'
  post 'statistics/update', to: 'statistics#update_statistics'
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
