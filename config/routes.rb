Rails.application.routes.draw do  
  get 'costomers/index'
  root :to => 'costomers#index'
  resources :costomers 
end

