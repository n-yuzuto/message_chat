Rails.application.routes.draw do
  root 'rooms#index'
  resources :rooms
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  post "rooms/new" => "rooms#new"
end
