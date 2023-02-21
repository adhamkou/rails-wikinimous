Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  get '/articles', to: 'articles#index'
  # Defines the root path route ("/")
  get 'articles/new', to: 'articles#new'
  post '/articles', to: 'articles#create'
  get 'articles/:id/edit', to: 'articles#edit', as: :article_edit
  patch '/articles/:id', to: 'articles#update'
  delete '/articles/:id', to: 'articles#destroy'
  get '/articles/:id', to: 'articles#show', as: :article
  # root "articles#index"
end
