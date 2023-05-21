Rails.application.routes.draw do
  get 'home', to: 'pages#home'
  get 'user_current', to: 'pages#user_current'
  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations'}
  resources :products
  resources :meetups
  resources :posts
  resources :likes

end



