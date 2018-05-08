Rails.application.routes.draw do

	root  'static_pages#home'
	resources :users
	resources :sessions, only: [:new, :create, :destroy]
	resources :microposts, only: [:create, :destroy]
	match '/signup',  to: 'users#new',            via: 'get'
	match '/signin',  to: 'sessions#new',         via: 'get'
	match '/signout',  to: 'sessions#destroy',      via: 'delete'
	match '/help', to: 'static_pages#help', 	  via: 'get'
	match '/about', to: 'static_pages#about',     via: 'get'
	match '/contact', to: 'static_pages#contact', via: 'get'
	match '/home', to: 'static_pages#home',       via: 'get'
end