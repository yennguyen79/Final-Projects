Rails.application.routes.draw do
   get "contact_us" => "home#contact_us"
  get "menu"=> "home#menu"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home#index"
end
