Rails.application.routes.draw do
  root to: 'main#index'

  resources :bill_predictions
end
