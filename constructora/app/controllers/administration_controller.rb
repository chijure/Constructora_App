class AdministrationController < ApplicationController
  layout "applicationintranet"
  def base_price
    render "pages/administration/base_price"
  end

  def report
    render "pages/administration/report"
  end

  def proforma
    render "pages/administration/proforma"
  end

  def register_sales
    render "pages/administration/register_sales"
  end

  def separate_departament
    render "pages/administration/separate_departament"
  end

  def admin_quotes
    render "pages/administration/admin_quotes"
  end

  def intranet
    render "pages/administration/intranet"
  end
end
