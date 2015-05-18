Rails.application.routes.draw do
  root 'homepage#index'
  get :servers, to: 'homepage#get_servers', as: :get_servers
  get '/servers/:server', to: 'homepage#get_server_dates', as: :get_server_dates
  get '/servers/:server/:date', to: 'homepage#get_server_metrics', as: :get_server_metrics
  #resources :servers, only: [:index,:show]
end