class PicturesController < ApplicationController
  def show
  	@picture = Picture.find(params[:id])
  end

  def index
  	@list_of_pictures = Picture.all
  end

  def new
  	render "new"
  end

  def create
  	i = Picture.new
	i.source = params[:source]
	i.caption = params[:caption]
	i.save
  	render "create"
  end

  def destroy
	i = Picture.find(params[:id])
	i.destroy
  	render "destroy"
  end

  def edit
  	@picture = Picture.find(params[:id])
  	render "edit"
  end

  def update
  	i = Picture.find(params[:id])
  	i.source = params[:source]
  	i.caption = params[:caption]
  	i.save
  	render "update"
  end
end
