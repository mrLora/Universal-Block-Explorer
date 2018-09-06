Rails.application.routes.draw do
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # First layer: http://localhost:3000/types
  # Second layer: http://localhost:3000/types/1/assets
  # Third layer: http://localhost:3000/types/1/assets/1/blocks/
  resources :types do
    resources :assets, only: [:index, :show] do
      resources :blocks, only: [:index, :show]
    end
    resources :blocks
  end
  resources :assets
end
