Rails.application.routes.draw do
  resources :posts

  get 'carts/add'

  get 'users/new'

  get 'about/index'

  resources :line_items, only: [:delete]
  
  resources :sections
  resources :users
    
  resources :carts, only: [:show]
  resources :food_items

  get "contact_us" => "home#contact_us"
  get "cart" => "carts#show"
  post  "carts/add"

  #get "menu"=> "sections#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home#index"
end

