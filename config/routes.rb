Fur::Application.routes.draw do
  devise_for :users

  root 'main#index'

  # ------------------------
  # Resources
  # ------------------------
  resources :room_layouts
  #resources :room_layouts, only: [:index, :create]
  resources :projects, only: [:index]
end
