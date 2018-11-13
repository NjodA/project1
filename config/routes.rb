Rails.application.routes.draw do

  resources :weights, :foods , :exercises
  devise_for :users
  get "/home", to: "pages#home"
  devise_scope :user do
    root to: "devise/sessions#new"
  end
end
