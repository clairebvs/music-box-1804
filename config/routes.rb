Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get '/songs', to: 'songs#index'

  # resources :songs
  # resources :artists
  root 'welcome#index'
  get '/logout', to: 'sessions#destroy'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'

  resources :artists, shallow: true do
    resources :songs, except: [:index]
  end
  resources :songs, only: [:index]
  resources :playlists

  resources :users, only: [:new, :create, :show]
  namespace :admin do
    resources :categories, only: [:index]
  end

  resources :carts, only: [:create]
end
