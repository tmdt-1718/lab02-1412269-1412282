Rails.application.routes.draw do
root 'home#index'
 get '/sessions/login', to: 'sessions#new' , as: :login
post '/sessions/login', to: 'sessions#create', as: nil
resources :users, only: [:new,:create]

get '/messages', to: 'messages#index'

end
