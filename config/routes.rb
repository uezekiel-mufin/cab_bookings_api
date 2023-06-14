Rails.application.routes.draw do
  get '/member-data', to: 'members#show'

  namespace :api do
    namespace :v1 do
      devise_for :users,
                 controllers: {
                   sessions: 'users/sessions',
                   registrations: 'api/v1/users/registrations'
                 }
      resources :cabs, only: [:index, :show, :update, :destroy] do
        resources :reservations, only: [:index, :show, :update, :destroy]
      end
    end
  end

  root "home#index"
end
