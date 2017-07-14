Rails.application.routes.draw do
  devise_for :users
  resources :addresses
  resources :phones
  resources :orders

  resources :carts do
    collection do
      get "add_product"
    end
  end

  resources :products
  resources :categories
  resources :accounts
  resources :people
  get 'home/index'
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
