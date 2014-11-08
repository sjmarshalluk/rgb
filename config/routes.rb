Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)


  resources :breweries, only: [:index, :new, :create, :show, :update, :destroy]

  root "pages#index"

end
