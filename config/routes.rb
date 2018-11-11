Rails.application.routes.draw do

  resources :weights, :foods , :exercises
  devise_for :users
  root to: "pages#home"
end
