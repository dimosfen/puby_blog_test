Rails.application.routes.draw do
  get 'session/new'
  root 'static_pages#home'
  get './singup', to:'users#new'
  get './help',to:'static_pages#help'
  get './login', to:'session#new'
  post './login', to:'session#create'
  delete './logout', to:'session#destroy'
  
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
