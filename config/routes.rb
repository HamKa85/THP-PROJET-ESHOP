Rails.application.routes.draw do
  devise_for :users

  root 'products#index'

  get '/products/:id', to: 'products#show', as: 'product'

end
