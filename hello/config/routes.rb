Rails.application.routes.draw do
  get 'welcome/index'
  root 'welcome#index'
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  #delete 'sign_out', :to => 'devise/sessions#destroy', :as => :destroy_user_session
end
