Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'welcome#index'
  get '/index', to: 'welcome#index'
  get '/prueba', to: 'printers#prueba'
  resources :printers
end
