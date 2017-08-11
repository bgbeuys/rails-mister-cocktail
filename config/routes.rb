Rails.application.routes.draw do
  root to: "cocktails#index"
  # get 'ingredients/name'
  # get 'cocktails/name'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root to: "controller#index"
  # resources :cocktails, only [:show, :index, :new, :create]
  resources :cocktails, only: [:show, :index, :new, :create] do
    resources :doses, only: [:new, :create]
    end
    resources :doses, only: [:destroy]
    resources :ingredients, only: [:show]
end

