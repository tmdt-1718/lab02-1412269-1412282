Rails.application.routes.draw do
get 'home/index'
 root 'home#index'
 get '/sessions/login', to: 'sessions#new' , as: :login
post '/sessions/login', to: 'sessions#create', as: nil

get '/messages', to: 'messages#index'

end
