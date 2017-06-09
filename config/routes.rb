Rails.application.routes.draw do
  resources :clients
  resources :students
  devise_for :users
  root to: "dashboard#index"
  get '/index', to: 'students#index', as: :index
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
