Rails.application.routes.draw do

  resources :articles

   # AUTHENTICATION

  # This route sends requests to our naked url to the *cool* action in the *gif* controller.
  root to: 'gif#cool'

  # I've created a gif controller so I have a page I can secure later.
  # This is optional (as is the root to: above).
  # get '/cool' => 'gif#cool'

  # These routes will be for signup. The first renders a form in the browse, the second will
  # receive the form and create a user in our database using the data given to us by the user.
  get 'signup', to: 'users#new'
  post 'users', to: 'users#create'

  # These routes are for showing users a login form, logging them in, and logging them out.
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
