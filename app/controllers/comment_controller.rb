class CommentController < ApplicationController
  def create
    @commenter = User.find(params[:user_id])  
    @comment = @commenter.comments.create(comment_params)
  
  end
 
  private
    def comment_params
      params.require(:comment).permit(:commenter, :text)
    end
end
