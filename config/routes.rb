Rails.application.routes.draw do
  root "articles#home"
  get "/about", to:"articles#about"

  # resources :articles do
  #   resources :comments
  # end
  resources :articles
end
