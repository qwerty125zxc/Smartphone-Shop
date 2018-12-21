Rails.application.routes.draw do
  devise_for :users
  devise_for :admins
  root 'pages#index'
  get '/admin-page', to: 'pages#admin'
  get '/admin-phone-list', to: 'pages#adminphones'

  resources :phones do
    resources :ordernoregs
    resources :comments
  end
  resources :userparams
end
