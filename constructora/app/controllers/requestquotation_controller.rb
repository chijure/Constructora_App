class RequestquotationController < ApplicationController
  def new
  	render "pages/requestquotation/new"
  end

  def manager
  	render "pages/requestquotation/manager"
  end

  def edit
  	render "pages/requestquotation/edit"
  end
end
