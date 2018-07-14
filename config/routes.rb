Rails.application.routes.draw do

  resources :playlist_contents

  devise_for :businesses
  resources :businesses
  resources :playlists
  resources :customers
  resources :screens

  root to: 'dashboard#index'
  get "/setting", to:'setting#index'
  get "/screens", to:'screens#index'
  get "/playlists", to:'playlists#index'
  get "playlists/new_playlist" => 'playlists#new_playlist', :as => :new_playlists
  get "/playlists/new" => 'playlists#new', :as => :new_playlist_form
end
