Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ('/')
  root 'users#index'
  
  # Route to list all users
  # Route to show a specific user
  resources :users, only: [:index, :show] do
    # Route to show all posts of a specific user
    # Route to show a specific post of a specific user
    resources :posts, only: [:index, :show]
  end
end
