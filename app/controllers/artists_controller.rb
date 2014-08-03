class ArtistsController < ApplicationController
	def new
		@artist = Artist.new
	end

	def index
		@artists = Artist.all
	end

	def show
		@artist = Artist.find(params[:id])
	end

	def create    
		@artist = Artist.new(painting_safe_params)
		@artist.save
		flash[:notice] = 'Artist created'
		
		redirect_to artists_path
	end

	private 
		def painting_safe_params
			params[:artist].permit(:name, :born, :died)
		end

end
