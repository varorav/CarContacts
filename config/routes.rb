Rails.application.routes.draw do
  devise_for :users
  get 'logins/index'
  get 'contacts/new_contact'
  get 'contacts/:id/read', to: 'contacts#read'
  get 'contact_books/:id/index', to: 'contact_books#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  root 'logins#index'

  resources :contacts, only: [:new, :create]
end
