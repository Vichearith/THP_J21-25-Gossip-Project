class CommentsController < ApplicationController
  def create
    @gossip = Gossip.find(params[:gossip_id])
    @comment = @gossip.comments.create(comment_params)
    redirect_to gossip_path(@gossip)
  end
 
  private
    def comment_params
      params.require(:comment).permit(:user_id, :content)
    end
end