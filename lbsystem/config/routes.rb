Rails.application.routes.draw do
  # ***** ADMIN CONTROLLER *****
  get 'admin/index'
  root to: 'admin#index' 
  get '/show', to: 'admin#show'
  get '/home', to: 'admin#home'	 
  get '/forgot_password', to: 'admin#forgot'
  get '/back', to: 'admin#home'
  get '/index', to: 'admin#index'

  # ****** BOOK ISSUES CONTROLLER  ****** 
  get '/book_issues', to: 'book_issue#index'
  get '/add_book_issues', to: 'book_issue#new'
  get '/book_issues/:id', to: 'book_issue#show'
  get 'book_issue/edit', to: 'book_issue#edit'
  get 'book_issue/destroy', to: 'book_issue#destroy'
  post '/book_issues', to: 'book_issue#create'
  patch 'book_issues/update', to: 'book_issue#patch'

  # ***** STUDENTS CONTROLLER *****
  get '/add_student', to: 'student#new'	
  get '/students', to: 'student#index'
  get '/students/:id', to: 'student#show'  
  post '/students', to: 'student#create'
  get 'student/edit', to: 'student#edit'
  get 'student/destroy', to: 'student#destroy'
  patch 'student/update', to: 'student#update'
 
  # ***** BOOKS CONTROLLER *****
  post '/books', to: 'book#create'
  get '/add_book', to: 'book#new' 
  get '/books', to: 'book#index'
  get '/books/:id', to: 'book#show' 
  get 'book/edit', to: 'book#edit'
  get 'book/destroy', to: 'book#destroy'
  patch 'book/update', to: 'book#update'

  # ***** CATEGORIES CONTROLLER *****    
  get '/categories', to: 'category#index'
  get 'categories/:id', to: 'category#show'
  get 'category/edit', to: 'category#edit'
  patch 'category/update', to: 'category#update'
  post '/categories', to: 'category#create'
  get '/add_category', to: 'category#new'
  get 'category/destroy', to: 'category#destroy'  

  # ***** DEPARTMENTS CONTROLLER ***** 
  get '/departments', to: 'department#index'
  get 'departments/:id', to: 'department#show'
  get 'department/edit', to: 'department#edit'
  patch 'department/update', to: 'department#update'
  post '/departments', to: 'department#create'
  get '/add_department', to: 'department#new'
  get 'department/destroy', to: 'department#destroy'  
 
 end
