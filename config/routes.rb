Rails.application.routes.draw do
  devise_for :users,
  controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registerations'
  }
  get '/member-data', to: 'members#show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :cabs, only: [:index, :show, :update, :destroy]
    end
  end
  # Defines the root path route ("/")
  root "homepages#index"
end
