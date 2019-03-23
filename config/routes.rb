Rails.application.routes.draw do
  root to: 'pages#welcome'
  get '/welcome', to: 'pages#welcome'
  get '/health-check', to: 'pages#health_check'
  get '/login', to: 'pages#login'
  get '/check-login', to: 'pages#check_login'
  post '/sign_in', to: 'pages#sign_in'
end
