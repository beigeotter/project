class PublicController < ApplicationController
	def index
		@activities = Activity.all
	end


end
