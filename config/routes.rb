Rails.application.routes.draw do
  root 'schedules#index'
  get '/show' , to: 'schedules#show'
  get '/new' , to: 'schedules#new'
  get '/edit' , to: 'schedules#edit'
  get '/create' , to: 'schedules#create'
  get '/update' , to: 'schedules#update'
  get '/destroy' , to: 'schedules#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
