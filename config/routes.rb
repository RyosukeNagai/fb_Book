Rails.application.routes.draw do
  get 'search/search'
  devise_for :users
  root 'home#top'
  get 'home/about'
  resources :users,only: [:show,:index,:edit,:update]
  resources :books,only: [:index,:create,:show,:edit,:update,:destroy]
  get '/search', to: 'search#search'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
