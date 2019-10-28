Rails.application.routes.draw do
  resources :pages
  resources :game, only: [:index, :show]
  resources :developer, only: :show
  resources :publisher, only: :show
  resources :platform, only: :show
  resources :genre, only: :show

  get 'game/show'
  get 'game/index'
  get 'developer/show'
  get 'developer/index'
  get 'publisher/show'
  get 'publisher/index'
  get 'genre/show'
  get 'genre/index'
  get 'platform/show'
  get 'platform/index'
  #get '/static/:permalink', to 'pages#permalink', as: 'permalink'

  root to: 'game#index'
end
