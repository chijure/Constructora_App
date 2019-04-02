Rails.application.routes.draw do
  get 'login/signup'
  get 'login/signin'
  get 'login/password_recovery'
  root 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
