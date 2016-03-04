Rails.application.routes.draw do

  
  get "episode_pages/eventhub"
  get "episode_pages/rushton"
  get "episode_pages/outreach"
  get "episode_pages/smith"
  get "episode_pages/social"
  get "episode_pages/colloquium"

  get "resource_pages/resourcehub"
  get "resource_pages/resresource"
  get "resource_pages/links"
  get "resource_pages/articles"
  get "resource_pages/cores"
  
  get "event_pages/calendar"
  get "event_pages/rushton"
  get "event_pages/outreach"
  get "event_pages/smith"
  get "event_pages/social"
  get "event_pages/colloquium"
  get "event_pages/eventhub"

  get "about_pages/abouthub"
  get "about_pages/history"
  get "about_pages/affliates"
  get "about_pages/focus"
  
  get "students_pages/studenthub"
  get "students_pages/tribeta"
  get "students_pages/nusa"
  get "students_pages/ngsa"
  get "students_pages/nsresources"
  get "students_pages/outreach"
  get "students_pages/bee"
  get "students_pages/awareness"
  get "students_pages/fair"
  get "students_pages/constitution"
  get "students_pages/bylaws"
  get "students_pages/gsac"

  get "prospect_pages/about"
  get "prospect_pages/admission"
  get "prospect_pages/finaid"
  get "prospect_pages/curriculum"
  get "prospect_pages/prospecthub"
  get "prospect_pages/faq"

  
  root to: 'homes#show'

  resources :people, except: [:show] do
      resources :pubs, except: [:create, :new, :edit, :destroy]
  end



  resources :articles
  resources :pubs, except: [:create, :new, :edit, :destroy]


  namespace :sekret do
    resources :people do
      resources :pubs
    end
  end

  get     '/sessions/new' => 'sessions#new',      as: :new_sessions
  post    '/sessions'     => 'sessions#create',   as: :session 
  delete  '/sessions'     => 'sessions#destroy'

  #last one!!!
  get ':position/:user_name', to: 'people#show', as: 'friendly_person'


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
