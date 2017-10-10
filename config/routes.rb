Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :users, only: [:new, :show, :create]
  resources :sessions, only: [:new, :destroy, :create]
  resources :rounds , only: [:show, :create] do
    resources :cards, only: [:show]
  end
  get '/decks', to: 'decks#index'
  root "decks#index"

   post '/users' => 'users#create'
   get '/users/new' => 'users#new', as: 'new_user'
   get '/users/:id' => 'users#show', as: 'user'
end
