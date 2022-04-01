Rails.application.routes.draw do
  resources :cars
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get '/by_value', to: 'cars#price_sorted'
  get '/by_make', to: 'cars#search_by_make'
end
