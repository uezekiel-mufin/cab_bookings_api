Rails.application.routes.draw do
  get '/member-data', to: 'members#show'

  namespace :api do
    namespace :v1 do
      devise_for :users,
                 controllers: {
                   sessions: 'users/sessions',
                   registrations: 'api/v1/users/registrations'
                 }
      resources :cabs, only: [:index, :create, :show, :destroy]
      resources :reservations, only: [:index, :create]

    end
  end
  controllers: {
    sessions: 'users/sessions',
    registrations: 'api/v1/users/registrations'
  }
  resources :cabs, only: [:index, :create, :show, :destroy]
    end
  end
  # Defines the root path route ("/")
  # root "articles#index"

  root "home#index"
end
