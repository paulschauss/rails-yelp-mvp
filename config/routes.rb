Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #Create
  get 'restaurants/new', to: 'restaurants#new'
  post 'restaurants', to: 'restaurants#create'
  #Read
  get 'restaurants', to: 'restaurants#index'
  get 'restaurants/:id', to: 'restaurants#show', as: :restaurant
  #Update
  #Destroy

  #Create
  resources :restaurants do
    resources :reviews, only: [ :new, :create ]
  end
  #Read
  # get 'restaurants', to: 'restaurants#index'
  # get "restaurants/:id", to: "restaurants#show", as: :restaurant
  #Update
  #Destroy
end
