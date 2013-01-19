class PublicController < ApplicationController
	def index
		@activities = Activity.all
		@tags =Tag.all
	end


end
