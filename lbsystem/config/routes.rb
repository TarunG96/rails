Rails.application.routes.draw do
  get 'admin/index'
  root to: 'admin#index' 
  get '/show', to: 'admin#show'
  get '/books', to: 'book#index'
  get '/home', to: 'admin#home'	 
  get '/book_issues', to: 'admin#show'
  get '/back', to: 'admin#home'	
 end
