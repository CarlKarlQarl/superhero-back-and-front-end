Rails.application.routes.draw do
  resources :supervillains, only: [:index, :show, :create, :destroy]
  resources :superheros, only: [:index, :show, :create, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
