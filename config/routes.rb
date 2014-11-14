Rails.application.routes.draw do



	get '/pubs' => 'pages#pubs'
	get '/bottle-shops' => 'pages#shops'
  get '/beer-clubs' => 'pages#clubs'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)


  resources :breweries, only: [:index, :new, :create, :show, :update, :destroy]

  root "pages#index"

end
