Rails.application.routes.draw do
  get 'about/index'

  resources :line_items, only: [:delete]
  
  resources :sections
    

  resources :food_items

  get "contact_us" => "home#contact_us"
  get "cart" => "carts#show"
  post  "carts/add"

  #get "menu"=> "sections#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home#index"
end

