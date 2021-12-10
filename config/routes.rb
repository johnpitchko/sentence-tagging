Rails.application.routes.draw do
  resources :sentences, only: %i[index create destroy]
  resources :entities, only: %i[create]

  root 'sentences#index'
end
