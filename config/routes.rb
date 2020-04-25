Rails.application.routes.draw do
  resources :posts
  resources :comments
  # resources :posts do
  #   get    '/comments',          to: 'comments#index', as: 'comments'
  #   post   '/comments',          to: 'comments#create'
  #   get    '/comments/new',      to: 'comments#new',   as: 'new_comment'
  #   get    '/comments/:id',      to: 'comments#show',  as: 'comment'
  #   get    '/comments/:id/edit', to: 'comments#edit',  as: 'edit_comment'
  #   patch  '/comments/:id',      to: 'comments#update'
  #   delete '/comments/:id',      to: 'comments#destroy'
  # end

  # get '/pages', to: 'pages#index'
  # post '/pages', to: 'pages#create'
  # get '/pages/new', to: 'pages#new', as: 'new_page'
  # get '/pages/:id', to: 'pages#show', as: 'page'
  # get '/pages/:id/edit', to:'pages#edit', as: 'edit_page'
  # patch '/pages/:id', to: 'pages#update'
  # delete '/pages/:id', to: 'pages#destroy'
  resources :pages
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
