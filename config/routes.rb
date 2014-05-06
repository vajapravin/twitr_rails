Twitr::Application.routes.draw do
  root 'tweeds#index'

  get '/tweeds' => 'tweeds#index'
  get '/tweeds/new' => 'tweeds#new'
  get '/tweeds/:id' => 'tweeds#show'
  get '/tweeds/:id/edit' => 'tweeds#edit'
  delete '/tweeds/:id' => 'tweeds#destroy'
  post '/tweeds/' => 'tweeds#create'
  put '/tweeds/:id' => 'tweeds#update'

  get '/creators' => 'creators#index'
  get '/creators/new' => 'creators#new'
  get '/creators/:id' => 'creators#show'
  get '/creators/:id/edit' => 'creators#edit'
  delete '/creators/:id' => 'creators#destroy'
  post '/creators/' => 'creators#create'
  put '/creators/:id' => 'creators#update'
end