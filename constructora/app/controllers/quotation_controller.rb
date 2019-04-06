class QuotationController < ApplicationController
  def edit
  	render "pages/quotation/edit"
  end

  def manager
  	render "pages/quotation/manager"
  end

  def new
  	render "pages/quotation/new"
  end
end
