Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "cakes#index"

  post 'cakes/calculate_cake', to: 'cakes#calculate_cake'
end
