Rails.application.routes.draw do
  devise_for :users

  resources :addresses, except: [:show]
  resources :phones, except: [:show]
  resources :orders

  resources :carts, except: [:show] do
    collection do
      get "increment_product"
      get "decrement_product"
    end
  end

  resources :products, except: [:show] do
    collection do
      get "add_product"
    end
  end

  resources :categories
  resources :people

  get 'checkout', to: 'checkout#index'
  get 'checkout/finish-order', to: 'checkout#finish_order'

  get 'home/index'
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
