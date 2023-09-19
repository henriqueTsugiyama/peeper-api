Rails.application.routes.draw do
  resources :posts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "welcome#index"
  get "/topics", to: "topics#index"
  post "/topics", to: "topics#create"
  get "/topics/new", to: "topics#new", as: :new_topic
  get "/topics/:id/edit", to: "topics#edit", as: :edit_topic
  get "/topics/:id", to: "topics#show", as: :topic
  patch "/topics/:id", to: "topics#update"
  put "/topics/:id", to: "topics#update"
  delete "/topics/:id", to: "topics#destroy"
end
