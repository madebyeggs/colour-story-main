V2::Application.routes.draw do
  root :to => 'home#index'
  resources :clientfacing
  resources :tweets, only: :index
end