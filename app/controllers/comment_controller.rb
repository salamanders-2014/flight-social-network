class CommentController < ApplicationController
  def create
    @user = User.find(params[:user_id])
    @post = Post.find(params[:post_id])
    @comment = @user.posts.comments.create(comment_params)
    redirect_to post_path(@post)
  end
 
  private
    def comment_params
      params.require(:comment).permit(:commenter, :text)
    end
end
