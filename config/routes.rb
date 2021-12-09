Rails.application.routes.draw do
  resources :sentences, only: %i[index]
  resources :entities, only: %i[create]

  root 'sentences#index'
end
