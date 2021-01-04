Rails.application.routes.draw do
  root 'posts#index'
  get '/new' , to: 'posts#new'
  post '/new',  to: 'posts#create'
  resources :posts
end
