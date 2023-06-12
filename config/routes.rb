Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :cabs, only: [:index, :show, :update, :destroy]
    end
  end
  # Defines the root path route ("/")
  root "homepages#index"
end
