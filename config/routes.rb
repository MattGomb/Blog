Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # Route to list all users
  get "/users", to: "users#index"

  # Route to show a specific user
  get "/users/:id", to: "users#show"

  # Route to show all posts of a specific user
  get "/users/:user_id/posts", to: "posts#index"

  # Route to show a specific post of a specific user
  get "/users/:user_id/posts/:id", to: "posts#show"
end
