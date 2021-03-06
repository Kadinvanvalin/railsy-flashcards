Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:new, :show, :create]
  resources :sessions, only: [:new, :destroy, :create]
  resources :rounds , only: [:show, :create]
  resources :cards, only: [:show]

  resources :decks, only: [:new, :show]

  root "decks#index"
  # get '/decks/:id', to: 'decks#show'
  # get '/decks', to: 'decks#index'
end
