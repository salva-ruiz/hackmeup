Rails.application.routes.draw do
  get '/health-check', to: 'pages#health_check'
end
