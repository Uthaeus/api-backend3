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

# q: can you identify what is causing the error?
# a: the error is caused by the fact that the user is not signed in.
# q: what is causing ActionController::RoutingError (uninitialized constant Users::RegistrationsController)?
# a: the error is caused by the fact that the user is not signed in.
# q: what is causing Zeitwerk::NameError (expected file /Users/romanlavery/coding2/practice-apis/api-backend3/app/controllers/users/registrations_controller.rb to define constant Users::RegistrationsController, but didn't)?
# a: the error is caused by the fact that the user is not signed in.
# q: what can i change to correct this error?
# a: i can change the routes file to include the devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations'} line


# q: what can i change to correct this error?
# a: i can change the routes file to include the devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations'} line
# q: what can i change to correct this error?
# a: i can change the routes file to include the devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations'} line
# q: what should the routes file look like?
# a: the routes file should look like this:
# Rails.application.routes.draw do



