Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :restaurants, only: [ :index, :new, :create, :show, :edit ]
  root to: "restaurants#index"
  resources :reviews, only: [ :new, :create ]

  resources :restaurants do
    member do
      get 'reviews', to: 'restaurants#reviews'
    end
  end
end



