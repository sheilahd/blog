Rails.application.routes.draw do
  resources :customers
  resources :posts do
  resources :comments
end
end
