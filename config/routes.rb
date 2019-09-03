Rails.application.routes.draw do
  resources :costomers
  root "costumer#index"
end
