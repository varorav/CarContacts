Rails.application.routes.draw do
  get 'logins/index'
  post 'logins/create_new'
  match 'logins/:id/create', to: 'logins#create', via: [:get, :post]
  match 'logins/read', to: 'logins#read', via: [:get, :post]
  post 'cars/create'
  get 'cars/read'
  get 'cars/update'
  get 'cars/delete'
  post 'contacts/create'
  get 'contacts/:id/read', to: 'contacts#read'
  get 'contacts/update'
  get 'contacts/delete'
  get 'contact_books/:id/index', to: 'contact_books#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  root 'logins#index'
end
