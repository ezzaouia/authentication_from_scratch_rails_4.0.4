Authfromscratch::Application.routes.draw do
  root 'welcome#index'
  get 'home', to: 'welcome#home', as: 'home'
  get 'sign_up', to: "users#new", as: 'sign_up'
  post '/users', to: "users#create", as: '/users'
  get "/sign_in", :to => "sessions#new"
	post "/sign_in", :to => "sessions#create", :as => :sessions
	get "/sign_out", :to => "sessions#destroy", as: "sign_out"
end