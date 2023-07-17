Rails.application.routes.draw do
  root "articles#home"
  get "about", to:"articles#about"
  resources :articles
  get 'signup', to:"users#new"
  # post 'users', to:'users#create'
  # resources :articles do
  #   resources :comments
  # end
  resources :users, except: [:new]
end
