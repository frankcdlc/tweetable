Rails.application.routes.draw do
  resources :comments
  resources :tweets
  devise_for :users
  root "tweets#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
end
