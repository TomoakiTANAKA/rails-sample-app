Rails.application.routes.draw do
  resources :articles
  get 'home/index'

  get '/hello', to: 'application#hello'
end
