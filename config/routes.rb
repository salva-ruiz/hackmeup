Rails.application.routes.draw do
  root to: 'pages#welcome'
  get '/welcome', to: 'pages#welcome'
  get '/health-check', to: 'pages#health_check'
end
