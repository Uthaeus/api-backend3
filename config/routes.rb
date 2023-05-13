Rails.application.routes.draw do
  get 'home', to: 'pages#home'
  get 'user_current', to: 'pages#users_current'
  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations'}
  resources :products
  resources :meetups
  resources :posts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
