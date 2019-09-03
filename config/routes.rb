Rails.application.routes.draw do  
  get 'costomers/index'
  root :to => 'costomers#index'
  get '/black', to: "costomers#black"
  resources :costomers 
end

