Rails.application.routes.draw do
  get 'admin/index'
  root to: 'admin#index' 
  get '/show', to: 'admin#show'
  get '/home', to: 'admin#home'	 
  get '/forgot_password', to: 'admin#forgot'
  get '/back', to: 'admin#home'
  get '/index', to: 'admin#index'
  
  get '/book_issues', to: 'book_issue#index'
  
  get '/add_student', to: 'student#new'	
  get '/students', to: 'student#index'
  get '/students/:id', to: 'student#show'  
  post '/students', to: 'student#create'
 
  post '/books', to: 'book#create'
  get '/add_book', to: 'book#new' 
  get '/books', to: 'book#list'
  get '/books/:id', to: 'book#show' 
  get '/edit', to: 'book#edit'
 end
