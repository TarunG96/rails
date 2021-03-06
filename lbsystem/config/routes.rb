Rails.application.routes.draw do
    

  require 'api_constraint'
  # namespace :api do
  #   scope module: :v1,:path => "v1",constraints: ApiConstraint.new(version: 1) do
  #   get 'my_function' => "bookss#my_function"
  #   end
  # end
  namespace :api do
    namespace :v1 do
      resources :students
    end
  end
  
  get 'pics' => 'pic#index'
  get 'pics/new' => 'pic#new'
  post 'pics' => 'pic#create'


  # ***** ADMIN CONTROLLER *****
  get 'admin/index'
  root to: 'admin#index' 
  get '/admin/show', to: 'admin#show'
  get '/admin/forgot_password', to: 'admin#forgot'
  get '/home', to: 'admin#home' 
  get '/register', to: 'admin#new'
  post '/create', to: 'admin#create'
  post '/login' => 'admin#login'
  get '/index' => 'admin#index'
  
 
  # ****** BOOK ISSUES CONTROLLER  ****** 
  get '/book_issues', to: 'book_issue#index'
  get '/add_book_issues', to: 'book_issue#new'
  get '/book_issues/:id', to: 'book_issue#show'
  get 'book_issue/edit', to: 'book_issue#edit'
  get 'book_issue/destroy', to: 'book_issue#destroy'
  post '/book_issues', to: 'book_issue#create'
  patch 'book_issues/update', to: 'book_issue#update'
  
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
  get '/books/:slug', to: 'book#show' 
  get '/books', to: 'book#index'
  get 'book/edit', to: 'book#edit'
  get 'book/destroy', to: 'book#destroy'
  patch 'book/update', to: 'book#update'
  get 'book/back', to: 'book#index'
  get 'order' => 'book#order'
  

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
