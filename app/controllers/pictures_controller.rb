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
  	 redirect_to pictures_url
  end

  def destroy
	   i = Picture.find(params[:id])
	   i.destroy
  	 redirect_to pictures_url
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
  	 redirect_to picture_url(i.id)
  end
end
