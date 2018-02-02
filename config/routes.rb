Rails.application.routes.draw do
  get '/videos', to: 'videos#index'
  get '/videos/new', to: 'videos#new', as: 'new_video'
  post '/videos', to: 'videos#create'
  delete '/videos/:id', to: 'videos#destroy', as: 'delete_video'
end

