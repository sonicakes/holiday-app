Rails.application.routes.draw do
  resources :holidays
  resources :comments
  resources :photos
  resources :users
  # get 'comments/index'
  # get 'comments/new'
  # get 'comments/create'
  # get 'comments/edit'
  # get 'comments/update'
  # get 'comments/delete'
  # get 'comments/destroy'
  # get 'photos/index'
  # get 'photos/new'
  # get 'photos/create'
  # get 'photos/edit'
  # get 'photos/update'
  # get 'photos/delete'
  # get 'photos/destroy'
  # get 'holidays/index'
  # get 'holidays/new'
  # get 'holidays/show'
  # get 'holidays/create'
  # get 'holidays/edit'
  # get 'holidays/update'
  # get 'holidays/delete'
  # get 'holidays/destroy'
  # get 'users/index'
  # get 'users/new'
  # get 'users/create'
  # get 'users/edit'
  # get 'users/update'
  # get 'users/delete'
  # get 'users/destroy'
  root :to => 'holidays#index'              # Replace this with whatever you want your root_path to be.
                                        # This path is where unauthorized users will be redirected_to.
  get '/login' => 'session#new'         # This will be our sign-in page.
  post '/login' => 'session#create'     # This will be the path to which the sign-in form is posted
  delete '/login' => 'session#destroy'  # This will be the path users use to log-out.
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
