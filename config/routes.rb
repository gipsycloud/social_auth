Rails.application.routes.draw do

  get '/auth/:provider/callback', to: 'sessions#create'
  get '/sign_out', to: 'sessions#destroy', as: :sign_out
  get '/auth/failure', to: 'sessions#auth_fail'
  
  resources :polls
  root to: 'polls#index'
  
end
