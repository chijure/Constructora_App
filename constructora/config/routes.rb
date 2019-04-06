Rails.application.routes.draw do 


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

  root 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
