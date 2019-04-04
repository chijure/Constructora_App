Rails.application.routes.draw do 
  get 'login/signup'
  get 'login/signin'
  get 'login/password_recovery'
  
  get 'requestquotation/manager'
  get 'requestquotation/new'
  get 'requestquotation/edit'

  get 'project/manager'
  get 'project/new'
  get 'project/edit'
  get 'project/details'

  root 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
