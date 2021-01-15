Rails.application.routes.draw do
  devise_for :users
  root to: "diaries#index"
  resources :diaries
  post 'diaries', to: 'diaries#create'
end
