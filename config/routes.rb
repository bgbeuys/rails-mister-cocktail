Rails.application.routes.draw do
  # get 'ingredients/name'
  # get 'cocktails/name'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root to: "controller#index"
  # resources :cocktails, only [:show, :index, :new, :create]
  resources :cocktails, only: [:show, :index, :new, :create] do
    resources :doses, only: [:create, :destroy]
  end
  resources :ingredients, only [:show]
  root to:  "cocktails#index"
end

