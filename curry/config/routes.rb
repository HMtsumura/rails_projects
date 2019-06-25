Rails.application.routes.draw do
  resources :curry
  get "/" => 'curry#index'
  get "login_success" => 'curry#login_success'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post "login" => "curry#login"
end
