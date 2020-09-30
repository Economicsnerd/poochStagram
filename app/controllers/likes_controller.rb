class LikesController < ApplicationController
	before_action :find_pooch 
	before_action :find_like, only: [:destroy]

	def create
		if already_liked?
			flash[:notice] = "You already liked!"
		else 
			@pooch.likes.create(user_id: current_user.id)
		end	
			redirect_to pooch_path(@pooch)

	end

	def destroy
		if !(already_liked?)
			flash[:notice] = "Can't do that!"
		else
			@like.destroy	
		end
		redirect_to pooch_path(@pooch)
	end

	private

	def already_liked?
		Like.where(user_id: current_user.id, pooch_id: params[:pooch_id]).exists?
	end

	def find_pooch
		@pooch = Pooch.find(params[:pooch_id])
	end

	def find_like
		@like = @pooch.likes.find(params[:id])
	end
end
