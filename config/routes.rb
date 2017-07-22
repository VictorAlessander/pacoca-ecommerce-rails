Rails.application.routes.draw do
  devise_for :users

  resources :addresses
  resources :phones
  resources :orders

  resources :carts do
    collection do
      get "increment_product"
      get "decrement_product"
    end
  end

  resources :products do
    collection do
      get "add_product"
    end
  end

  resources :categories
  resources :accounts
  resources :people

  get 'checkout', to: 'checkout#index'
  get 'checkout/finish-order', to: 'checkout#finish_order'

  get 'home/index'
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
