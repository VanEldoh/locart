Rails.application.routes.draw do
  devise_for :users
  root to: 'artworks#index'
  resources :artworks, only: [:index, :new, :create, :show] do
    collection do
      get 'all'
    end
    resources :bookings, only: [:new, :create, :index, :edit, :update]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
