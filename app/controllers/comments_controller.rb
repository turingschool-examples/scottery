class CommentsController < ApplicationController
  def create
    comment = Comment.new(comment_params)

    if comment.save
      redirect_to post_path(id: comment.post.id), success: "Your comment was created."
    else
      flash.now[:danger] = "Your comment was not created."
      render "posts/show", post: comment.post
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:author, :body).merge(post_id: params[:post_id])
  end
end
