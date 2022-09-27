Rails.application.routes.draw do
  root 'welcome#index'
  get '/index', to: 'welcome#index'
  get '/prueba', to: 'printers#prueba'
  resources :printers
  resources :drivers
end
