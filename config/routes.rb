Rails.application.routes.draw do
  resources :productos
  resources :portatiles
  resources :computadores
  resources :orden_items
  resource :carts , only:[:show]
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "productos#index"
end
