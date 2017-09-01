Rails.application.routes.draw do
  resources :sections do
    resources :food_items
  end

  resources :food_items, only: [:destroy]

  get "contact_us" => "home#contact_us"
post  "carts/add"
  #get "menu"=> "sections#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home#index"
end

