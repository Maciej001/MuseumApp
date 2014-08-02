class MuseumsController < ApplicationController
	def new
		@museum = Museum.new
	end

	def index
		@museums = Museum.all
	end

	def show
		@museum = Museum.find(params[:id])

	end

	def create 
		@museum = Museum.new(params[:museum].permit(:name))
		@museum.save
		flash[:notice] = 'Company created'
		redirect_to @museum
	end
	
end


