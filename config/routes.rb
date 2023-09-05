Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "welcome#index"
  get "/topics", to: "topics#index"
  post "/topics", to: "topics#create"
  get "/topics/:id/edit", to: "topics#edit", as: :edit_topic
  get "/topics/new", to: "topics#new", as: :new_topic
  get "/topics/:id", to: "topics#show", as: :topic
end
