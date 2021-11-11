Rails.application.routes.draw do
  root "kitties#index"
  get '/404', to: 'errors#not_found'
  get '/500', to: 'errors#internal_server'
  get '/422', to: 'errors#unprocessable'
  
  resources :kitties
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
