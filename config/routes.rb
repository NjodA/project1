Rails.application.routes.draw do
  resources :weights
  devise_for :users
  root to: "pages#home"
end
