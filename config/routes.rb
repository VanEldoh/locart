Rails.application.routes.draw do
  # get 'bookings/index'
  # get 'bookings/update'
  # get 'artworks/index'
  # get 'artworks/new'
  # get 'artworks/create'
  # get 'artworks/show'
  devise_for :users
  root to: 'artworks#index'
  resources :artworks, only: [:index, :new, :create, :show] do
    resources :bookings, only: [:new, :create, :index, :edit, :update]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
