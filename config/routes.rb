Rails.application.routes.draw do
  get '/' => 'books#index'
  get '/books' => 'books#index'
  get '/books/new' => 'books#new'
  post '/books/' => 'book#create'
  get '/books/:id' => 'books#show'
  get '/books/:id/edit' => 'book#edit'
  put '/books/:id' => 'books#update'
  delete '/books/:id' => 'books#destroy'

  get '/authors' => 'authors#index'
  get '/authors/new' => 'athors#new'
  post '/authors/' => 'authors#create'
  get '/authors/:id' => 'authors#show'
  get '/authors/:id/edit' => 'authors#edit'
  put '/authors/:id' => 'authors#update'
  delete '/authors/:id' => 'authors#destroy'
end
