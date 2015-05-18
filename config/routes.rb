Rails.application.routes.draw do
  root 'homepage#index'
  get :servers, to: 'homepage#get_servers', as: :get_servers
end