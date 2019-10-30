Rails.application.routes.draw do
  resources :pages
  get '/static/:permalink', to: 'pages#permalink', as: 'permalink'

  resources :game, only: [:index, :show] do
    collection do
      Get 'search_results'
    end
  resources :developer, only: [:index, :show]
  resources :publisher, only: [:index, :show]
  resources :platform, only: [:index, :show]
  resources :genre, only: [:index, :show]

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

  root to: 'game#index'
end
