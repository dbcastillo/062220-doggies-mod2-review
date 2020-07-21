Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/dogs', to:'dogs#index', as: 'dogs'
  get '/dogs/new', to: 'dogs#new', as: 'new_dog'
  post '/dogs', to: 'dogs#create', as: 'create_dog'
  get '/dogs/:id/edit', to: 'dogs#edit', as: 'edit_dog'
  delete '/dogs/:id', to: 'dogs#destroy', as: 'delete_dog'
  get '/dogs/:id', to:'dogs#show', as: 'dog'
  patch '/dogs/:id', to: 'dogs#update', as: 'update_dog'
end


