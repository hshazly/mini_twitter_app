Twitter::Application.routes.draw do

  resources :relationships, :only => [:create, :destroy]


  get "homepage/home"

  devise_for :users

  resources :users, :only => [:show, :index] do
     resources :posts do
      
     end
     member do
       get 'followers'
       get 'following'
     end
  end

 

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  root :to => 'homepage#home'

end
