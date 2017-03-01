Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'users#new'

  # get '/login',to: 'pages#login'
  # get '/register', to:'pages#register'

  # get '/article', to: 'articles#index'
  # get '/article', to: 'articles#new', as: 'new_article'
  resources :login,only:[:new,:create,:destroy]
  resources  :users, only:[:show,:new,:edit,:create,:update]
  resources  :articles
  # show   /users/:id 
  # new    /users/new
  # edit   /users/:id/edit
  # create /users
  # update /users/:id
  # destroy /users/:id
  # index   /users




end
