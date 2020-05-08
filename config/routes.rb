Rails.application.routes.draw do


  resources :orders
  resources :pages
  resources :customers
  resources :posts do
  resources :comments

end
end
