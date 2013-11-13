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
		p = Picture.new
		p.caption = params[:caption]
		p.source = params[:source]
		p.save
		redirect_to (pictures_url)
	end 

	def destroy
		p = Picture.find(params[:id])
		p.destroy
		redirect_to (pictures_url)
	end

	def edit
		@picture = Picture.find(params[:id])
	end

	def update
		p = Picture.find(params[:id])
		p.caption = params[:caption]
		p.source = params[:source]
		p.save
		redirect_to picture_url(p.id)
	end

end
