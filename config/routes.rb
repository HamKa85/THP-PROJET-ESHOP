Rails.application.routes.draw do

  get 'users/admin'

  get 'users/show'

  get 'orderpayement/:id' , to: 'charges#new', as: 'new_charge'

  post 'payementconfirmation/:id' , to: 'charges#create', as: 'charges'

  get 'carts/show'

  devise_for :users

  root 'products#index'

  get '/products/:id', to: 'products#show', as: 'product'

  get '/products/addtocart/:id', to: 'carts#addtocart', as: 'addtocart'

  get '/showcart', to: 'carts#show', as: 'showcart'

  get '/createorder', to: 'orders#createorder', as: 'createorder'

  get '/orders', to: 'orders#index', as: 'orders'

  delete '/cart/destroy', to: 'carts#destroy', as: 'cartdestroy'

  delete '/cart/destroyitem/:id', to: 'carts#deleteitem', as: 'destroyitem'

  delete '/orderdestroy/:id', to: 'orders#destroy', as: 'orderdestroy'

  get 'users/:id',to: 'users#show', as: 'show_user'

end
