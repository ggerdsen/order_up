Rails.application.routes.draw do
  resources :ingredients
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/dishes/:dish_id', to: 'dishes#show'
end
