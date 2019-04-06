class SalesController < ApplicationController
  def edit
  	render "pages/sales/edit"
  end

  def manager
  	render "pages/sales/manager"
  end

  def new
  	render "pages/sales/new"
  end
end
