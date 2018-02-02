Rails.application.routes.draw do
  get '/videos', to: 'videos#index'
  get '/videos/new', to: 'videos#new', as: 'new_video'
  post '/videos', to: 'videos#create'
end

