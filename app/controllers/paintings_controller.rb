class PaintingsController < ApplicationController
	def new
		# calling new from museums passes museum_id, so let's create @museum
		# @museum = Museum.find(params[:museum_id])
		@painting = Painting.new
		# @painting.museum_id = @museum.id
	end

	def create    
		@painting = Painting.new(painting_safe_params)
		@painting.save
		flash[:notice] = 'Company created'
		
		redirect_to museum_path @painting.museum_id
	end

	def show
		@painting = Painting.find(params[:id])
	end

	def index 
		@paintings = Painting.search_for(params[:q])
		# Tshirt.search_for(params[:q])
	end

	private 
		def painting_safe_params
			params[:painting].permit(:name, :year, :museum_id, :image_url, :artist_id)
		end
end
