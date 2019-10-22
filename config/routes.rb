Rails.application.routes.draw do
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
  get 'sales/index'
  get 'sales/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
