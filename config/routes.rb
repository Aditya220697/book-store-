Rails.application.routes.draw do
  resources :books

  resources :categories, only: [:index, :show]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "home", to: "home#index"

  get "password", to: "passwords#edit" , as: :edit_password

  patch "password", to: "passwords#update"

  get "sign_up", to: "registrations#new"

  post "sign_up", to: "registrations#create"

  get "sign_in", to: "sessions#new"

  post "sign_in", to: "sessions#create"

  delete "logout", to: "sessions#destroy"

  get "password/reset", to: "password_resets#new"

  post "password/reset", to: "password_resets#create"

  root "main#index"

  get "about", to: "home#about"

  get "index", to: "cart_items#index"
  
  # post "cart" to: "shopping_carts#create"
  # get "author", to: "author#index"
  get "show", to: "author#show"
  
  resources :books do
    resources :cart_items, only: [:create]
  end

 # config/routes.rb
  resources :cart_items, only: [:create]
  
  

  resource :shopping_carts, only: [:show]
end
