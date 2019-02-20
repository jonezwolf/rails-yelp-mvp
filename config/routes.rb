Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # List of all restaurants
  # resources :restaurants, only: [:new, :create, :show, :index]
  get 'restaurants', to: 'restaurants#index'
  # Add a new restaurant
  get 'restaurants/new', to: 'restaurants#new'
  post 'restaurants', to: 'restaurants#create'
  # View one specific restaurant
  get 'restaurants/:id', to: 'restaurants#show', as: :restaurant

  get 'restaurants/:restaurant_id/reviews/new', to: 'reviews#new', as: :new_restaurant_review
  post 'restaurants/:restaurant_id/reviews', to: 'reviews#create', as: :restaurant_reviews

end
