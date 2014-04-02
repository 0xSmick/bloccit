class CommentsController < ApplicationController

  def create
    @post = Post.find(params[:post_id])
    @topic = @post.topic
    @comments = @post.comments

    @comment = current_user.comments.build(comment_params)
    @comment.post = @post
    @new_comment = Comment.new

    authorize @comment

    if @comment.save
      redirect_to [@topic, @post], notice: "Comment was created."
    else
      flash[:error] = "There was an error saving the comment. Please try again."
      render "posts/show"
    end
  end

    def comment_params
      params.require(:comment).permit(:body, :post_id)
    end


end