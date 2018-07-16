Rails.application.routes.draw do
  resources :holidays
  resources :comments
  resources :photos
  resources :users


  root :to => 'holidays#index'              # Replace this with whatever you want your root_path to be.
                                        # This path is where unauthorized users will be redirected_to.
  get '/login' => 'session#new'         # This will be our sign-in page.
  post '/login' => 'session#create'     # This will be the path to which the sign-in form is posted
  delete '/login' => 'session#destroy'  # This will be the path users use to log-out.
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
