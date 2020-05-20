Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :restaurants, only: [:index, :new, :create, :show, :destroy] do
      resources :reviews, only: [:new, :create]
    end
  resources :reviews, only: [:destroy]
end

  # get 'restaurants', to: 'restaurants#index'

  # get 'restaurants/new', to: 'restaurants#new'
  # post 'restaurants', to: 'restaurants#create'

  # get 'restaurants/:id', to: 'restaurants#show', as: :restaurant

  # delete 'restaurants/:id', to: 'restaurants#destroy'
