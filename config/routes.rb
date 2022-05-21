Rails.application.routes.draw do
  get 'comments/create'
  devise_for :users
  get 'prototypes/index'
  root to: "prototypes#index"
  resources :users, Only: [:index, :edit, :Update, :show]
  resources :prototypes, Only: [:new, :create, :show, :edit, :update, :destroy] do
    resources :comments, Only: [:create]
  end
end
