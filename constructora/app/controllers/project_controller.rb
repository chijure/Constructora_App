class ProjectController < ApplicationController
  def details
  	render "pages/project/details"
  end

  def edit
  	render "pages/project/edit"
  end

  def manager
  	render "pages/project/manager"
  end

  def new
  	render "pages/project/new"
  end
end
