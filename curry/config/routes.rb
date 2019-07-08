Rails.application.routes.draw do
  resources :curry
  get "/" => 'curry#index'
  get "/curry/new" => "curry#new"
  post "/curry/create" => "curry#create"
  # get "curry/login_success" => 'curry#show'
  # get "curry/:id/edit" => "curry#edit"
  # post "curry/:id/update" => "curry#update"
  get "curry/login_success" => 'curry#login_success'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post "login" => "curry#login"
  
  get "posts/index" => "posts#index"
  get "posts/:id/edit" => "posts#edit"
  post "posts/:id/update" => "posts#update"
  get "posts/new" => "posts#new"
  post "posts/create" => "posts#create"
  post "posts/:id/destroy" => "posts#destroy"
  
  
end
