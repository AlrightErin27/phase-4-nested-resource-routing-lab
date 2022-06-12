Rails.application.routes.draw do
  resources :users, only: [:show] do
    resources :items, only: %i[show index create]
  end

  resources :users, only: %i[show index create]
  resources :items, only: %i[show index create]

  # Verb  URI Pattern                                    Controller#Action
  # user_items GET   /users/:user_id/items(.:format)     items#index
  # user_item GET    /users/:user_id/items/:id(.:format) items#show
  # user GET         /users/:id(.:format)                users#show
  # items GET        /items(.:format)                    items#index
  # POST             /items(.:format)                    items#create
end
