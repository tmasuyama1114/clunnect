Rails.application.routes.draw do
  devise_for :users,
    controllers: { registrations: 'registrations' } # ここの行を追加

  # resources :pages
  root 'pages#home'

  get '/users/:id', to: 'users#show', as: 'user'
end