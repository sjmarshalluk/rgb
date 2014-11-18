Rails.application.routes.draw do



	get '/pubs' => 'pages#pubs'
	get '/bottle-shops' => 'pages#shops'
  get '/beer-clubs' => 'pages#clubs'

  get '/breweries/all' => 'breweries#all'
  get '/breweries/near' => 'breweries#near'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)


  resources :breweries, only: [:index, :new, :create, :show, :edit, :update, :destroy]
  resources :shops, only: [:new, :create, :update, :destroy]
  resources :clubs, only: [:index, :new, :create, :update, :destroy]

  root "pages#index"

end
