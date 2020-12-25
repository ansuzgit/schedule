Rails.application.routes.draw do
  root 'posts#index'
  get '/show' , to: 'posts#show'
  get '/new' , to: 'posts#new'
  post '/new',  to: 'posts#create'
  resources :posts
end
