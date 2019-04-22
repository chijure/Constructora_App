Rails.application.routes.draw do 


  resources :sales
  resources :apartment_type_prices
  resources :banks
  resources :apartment_bookings
  resources :apartment_types
  resources :quotations
  resources :projects
  resources :request_quotations
  resources :appointments
  resources :users
  resources :clients
  resources :profiles
  resources :cities
  resources :states
  get 'administration/base_price'
  get 'administration/report'
  get 'administration/proforma'
  get 'administration/register_sales'
  get 'administration/separate_departament'
  get 'administration/admin_quotes'
  get 'administration/intranet'

  get 'login/signup'
  get 'login/signin'
  get 'login/manager'
  get 'login/password_recovery'

  get 'sales/manager'
  get 'sales/new'
  get 'sales/edit'

  get 'quotation/manager'
  get 'quotation/new'
  get 'quotation/edit'

  get 'requestquotation/manager'
  get 'requestquotation/new'
  get 'requestquotation/edit'

  get 'project/manager'
  get 'project/new'
  get 'project/edit'
  get 'project/details'

  get 'pages/aboutus'
  get 'pages/contactus'
  root 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
