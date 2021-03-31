Rails.application.routes.draw do
  devise_for :users

  # rootはRoom一覧画面にしておく
  root 'rooms#index'

  # resourcesを使うとRESTfulなURLを自動生成できる
  resources :rooms, only: %i[show]
end