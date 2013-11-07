class PicturesController < ApplicationController
  def show
  	@picture = Picture.find(params[:id])
  end

  def index
  	@list_of_pictures = Picture.all
  end

	def new
	end

	def create
		@picture = Picture.new
		@picture.caption = params[:caption]
		@picture.source = params[:source]
		@picture.save
	end

	def destroy
		@picture = Picture.find(params[:id])
		@picture.destroy
	end

	def edit
		@edit_pic = Picture.find(params[:id])
		@picture = Picture.find(params[:id])
	end

	def update
		@picture = Picture.find(params[:id])
		@picture.caption = params[:caption]
		@picture.source = params[:source]
		@picture.save
	end

end
