Rails.application.routes.draw do
  root 'schedules#index'
  get 'schedules/index'
  get 'schedules/show'
  get 'schedules/new'
  get 'schedules/edit'
  get 'schedules/create'
  get 'schedules/update'
  get 'schedules/destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
