Rails.application.routes.draw do
  get 'homes/index'
  root 'homes#index'
  resources :messages
end
