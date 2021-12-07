Rails.application.routes.draw do
  resources :sentences, only: %i[index]

  root 'sentences#index'
end
