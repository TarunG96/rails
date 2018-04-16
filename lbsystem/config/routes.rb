Rails.application.routes.draw do
  get 'welcome/index'
  root to: 'welcome#index' 
  get 'admin_home', to: 'welcome#admin_home'
  get 'add_book', to:'welcome#add_book'
  get 'add_student', to:'welcome#add_student'
  get 'book_issue_details', to:'welcome#book_issue_details'
  get 'forgot_password', to:'welcome#forgot_password'
  get 'index', to: 'welcome#index'
end
