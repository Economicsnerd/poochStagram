class CommentsController < ApplicationController

  def create
    @pooch   = Pooch.find(params[:pooch_id])
      @comment = @pooch.comments.create(comment_params)
      @comment.user_name = current_user.user_name
      if @comment.save
        redirect_to pooch_path(@pooch) 
      else
       flash[:notice] = "Error"
      end 
  end

  def destroy
  	@pooch = Pooch.find(params[:pooch_id])
  	@comment = @pooch.comments.find(params[:id])
  	@comment.destroy
  	redirect_to post_path(@pooch)
  end


private

  def comment_params
    params.require(:comment).permit(:user_id, :name, :comment)
  end


end
