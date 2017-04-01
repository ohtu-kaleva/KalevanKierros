Rails.application.routes.draw do
  resources :uutiset

  resources :results

  resources :event_attributes, except: [:index, :show, :new]

  resources :events
  
  resources :users
  resources :sessions, only: [:new, :create]
  resources :enrollments, only: [:create, :index]
  resources :groups, only: [:new, :create, :show]
  resources :relay_groups, only: [:new, :create, :show]
  resources :kk_enrollments, only: [:show, :update, :edit]
  resources :password_resets, only: [:new, :create, :edit, :update]
  get 'enrollments/:enrollment_id/edit', to: 'enrollments#edit', as: 'edit_enrollment'
  get 'enrollments/outsider/:event_id', to:'enrollments#new_outsider_enrollment', as: 'outsider_enrollment'
  post 'enrollments/outsider/:event_id', to: 'enrollments#create_outsider_enrollment', as: 'create_outsider_enrollment'
  get 'results/year/:year/:gender/:age_group/:type', to: 'results#index_by_year', as: 'index_by_year'

  get 'uutiset/arkisto/:year', to: 'uutiset#archive_by_year', as: 'archive_by_year'

  get 'admin/kk_enrollment', to: 'static_pages#kk_enrollment'
  get 'admin/cover_image', to: 'static_pages#cover_image'
  post 'admin/change_cover_image', to: 'static_pages#change_cover_image'
  get 'admin/import_payments', to: 'static_pages#import_payments'
  put 'admin/import_payments_file', to: 'static_pages#import_payments_file', as: 'import_payments_file'
  get 'admin/list_years_awards', to: 'yearly_awards#list_years_awards', as: 'years_awards'
  get 'kk_enrollments', to: 'kk_enrollments#index'
  #get 'kk_enrollments/:id', to: 'kk_enrollments#edit', as: 'edit_kk_enrollment'
  #put 'kk_enrollments/:id', to: 'kk_enrollments#update'
  delete 'kk_enrollments/:id', to: 'kk_enrollments#destroy'
  post 'kk_enrollment/change', to: 'kk_enrollments#change_enrollment_status'
  get 'users/:id/kk_enrollments/new', to: 'kk_enrollments#new', as: 'new_kk_enrollment'
  post 'users/:id/kk_enrollments/new', to: 'kk_enrollments#create'

  root 'static_pages#etusivu3'
  get 'static_pages/etusivu3'
  #static pages

  get 'esittely/kalevankierros', to: 'static_pages#kalevankierros'
  get 'esittely/lajikuvaukset', to: 'static_pages#lajikuvaukset'
  get '/ilmoittautuminen', to: 'static_pages#ilmoittautuminen', as: 'ilmoittautuminen'
  get 'esittely/pistelasku', to: 'static_pages#pistelasku'
  get 'esittely/saannot', to: 'static_pages#saannot'
  get 'esittely/hallituksen-kokoukset', to: 'static_pages#hallituksen-kokoukset'

  get 'yhteystiedot', to: 'static_pages#yhteystiedot'
  get 'yhteystiedot/palaute', to: 'static_pages#palaute'
  get 'yhteystiedot/hallitus', to: 'static_pages#hallitus'
  get 'yhteystiedot/seurat', to: 'static_pages#seurat'
  get 'yhteystiedot/linkkeja', to: 'static_pages#linkkeja'
  get 'yhteystiedot/postituslista', to: 'static_pages#postituslista'
  get 'testi', to: 'static_pages#etusivu'
  get '2016', to: 'static_pages#etusivu2'

  get 'haastekisa', to: 'static_pages#haastekisa'

  get 'diplomas', to: 'printing_materials#export_diplomas', as: 'export_diplomas'
  get 'address_stickers', to: 'printing_materials#export_address_stickers', as: 'export_address_stickers'

  get 'signup', to: 'users#new'
  get 'signin', to: 'sessions#new'
  delete 'signout', to: 'sessions#destroy'
  get 'events/:event_id/event_attributes/new', to: 'event_attributes#new', as: 'add_event_attribute'
  get 'events/:event_id/enrollments/new', to: 'enrollments#new', as: 'add_enrollment'
  get 'enrollments/:enrollment_id', to: 'enrollments#show', as: 'enrollment'
  delete 'enrollments/:enrollment_id', to: 'enrollments#destroy', as: 'delete_enrollment'
  get 'groups/:id/add_user', to: 'groups#add_user_to_group', as: 'add_user_to_group'
  post 'groups/:id/add_user', to: 'groups#update_user_group_relation'
  put 'groups/:id', to: 'groups#delete_user_from_group', as: 'delete_user_from_group'
  get 'relay_groups', to: 'relay_groups#index'
  get 'relay_groups/:id/add_user', to: 'relay_groups#add_user_to_relay_group', as: 'add_user_to_relay_group'
  post 'relay_groups/:id/add_user', to: 'relay_groups#update_user_relay_group_relation'
  put 'relay_groups/:id', to: 'relay_groups#delete_user_from_relay_group', as: 'delete_user_from_relay_group'
  get 'event_enrollments/:event_id/', to: 'enrollments#show_enrollments_for_event', as: 'show_enrollments'
  put 'event_enrollments/', to:'enrollments#update', as: 'add_times_and_payment_info'
  put 'kk_enrollments/', to:'kk_enrollments#update', as: 'add_payment_info'
  put 'relay_groups/', to:'relay_groups#update', as: 'add_relay_payment_info'
  get 'event_enrollments/:event_id/single', to: 'enrollments#single'
  post 'event_enrollments/:event_id/single', to: 'enrollments#update_single'
  put 'event_enrollments/:event_id/import_csv', to: 'enrollments#import_csv', as: 'import_file'
  post 'event_enrollments/:event_id/remove_all_payment_info_for_event', to: 'enrollments#remove_all_payment_info_for_event', as: 'cancel_payments'
  put 'enrollments/:enrollment_id', to: 'enrollments#delete_time', as: 'delete_time'
  put 'enrollments/:enrollment_id/payment', to: 'enrollments#update_payment_info', as: 'update_payment_info'
  post 'results/:event_id', to: 'results#calculate_points', as: 'calculate_points'
  patch 'enrollment_datas/:id', to: 'enrollment_datas#update', as: 'enrollment_datum'
  get 'results/year/:year/groups', to: 'results#with_existing_group', as: 'results_by_year_and_groups'
  get 'results/groups/female_groups', to: 'results#with_female_group', as: 'results_for_female_groups'
  get 'results/groups/mixed_groups', to: 'results#with_mixed_group', as: 'results_for_mixed_groups'
  get 'results/year/:year/relay_groups', to: 'results#with_existing_relay_group', as: 'results_by_year_and_relay_groups'
  get 'results/passed_participants_for_year_book/:gender', to: 'results#xlsx_results_for_year_book', as: 'individual_results_to_year_book'
  get 'results/individual/series', to: 'results#top_results_for_different_series', as: 'top_series_results'
  get 'users/:id/activate', to: 'users#new_activation', as: 'activation'
  put 'users/:id/activate', to: 'users#activate'
  get 'statistics', to: 'statistics#index', as: 'statistics'
  get 'statistics/search', to: 'statistics#index_filterable', as: 'statistics_filterable'
  get 'statistics/static', to: 'statistics#index_static'
  get 'statistics/:id', to: 'statistics#show', as: 'statistic'
  delete 'statistics/:id', to: 'statistics#destroy', as: 'delete_statistic'
  get 'statistics/:id/edit', to: 'statistics#edit', as: 'edit_statistic'
  patch 'statistics/:id', to: 'statistics#update', as: 'update_statistic'
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