Rails.application.routes.draw do
  resources :weights, :foods
  devise_for :users
  root to: "pages#home"
end
